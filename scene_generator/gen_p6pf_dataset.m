%%
function [] = gen_p6pf_dataset(iters)
gt_p6p = []; datas_p6p = [];
for i=1:iters
    [gt, data] = generate_p6pf_refractive_scene();
    gt_p6p = [gt_p6p, [gt{1};gt{2};gt{3};gt{4}]];
    datas_p6p = [datas_p6p, data'];
    if mod(i,1000) == 0 
        disp(i);
        save(strjoin({'gt_p6p_',num2str(1)},''), "gt_p6p");
        save(strjoin({'datas_p6p_refractive_',num2str(1)},''),"datas_p6p");
    end
end
save("gt_p6p", "gt_p6p");
save("datas_p6p_refractive","datas_p6p");
end

%% GENERATE ONE SCENE CONFIGURATION
function [gt_p6p, datas_p6p] = generate_p6pf_refractive_scene()
rotx = @(t) [1 0 0; 0 cos(t) -sin(t) ; 0 sin(t) cos(t)] ;
roty = @(t) [cos(t) 0 sin(t) ; 0 1 0 ; -sin(t) 0  cos(t)] ;
rotz = @(t) [cos(t) -sin(t) 0 ; sin(t) cos(t) 0 ; 0 0 1] ;
%% A synthetic scene setup for 2D case.
iters = 1;
datas_p6p = [];
Ps = [];
syms vx vy vz x y z;
v_sym = [vx;vy;vz];
%% Ground truth values for the camera pose
q_gt = rot2quat(rotx(randi([1,90]))*roty(randi([1,90]))*rotz(randi([1,90])));
R = quat2rot(q_gt);
alpha = norm(R);
R = R/norm(R);

t_gt = cross(R(:,3), randn(3,1));
t = t_gt;
C = t;

nc = [0;0;1];
n = R * nc;

d = -0.5-transpose(n)*t;
r = 0.3; r_gt = r;
K = diag([1;1;-(d+transpose(n)*t)]);

impoints = 2 * (rand(iters, 20, 2) - 0.5);

for iter = 1:iters
    datasm = [];
    
    impointsbatch = reshape(impoints(iter,:,:),20,2);
    for i = 1:20
        %%  Measurements
        
        P = R*K*[transpose(impointsbatch(i,:));1] + t;
        thresh = 1e-10;
        %     u = randn(3,1); u = u/norm(u); % Random image data point representative in world coordinate system
        u = P - C; u = u/norm(u);
        tht1 = abs(acos(dot(n, u)) - pi);
        tht2 = asin(sin(tht1)*r);
        %     P = C - u * (transpose(nc) * transpose(R) * C + d)/(transpose(nc) * transpose(R) * u);
        
        %     while (P(1)-C(1))/u(1) < 0 || abs(sin(tht1)*r) > 1
        %         u = randn(3,1); u = u/norm(u); % Random image data point representative in world coordinate system
        %         tht1 = abs(acos(dot(n, u)) - pi);
        %         tht2 = asin(sin(tht1)*r);
        %         P = C - u * (transpose(nc) * transpose(R) * C + d)/(transpose(nc) * transpose(R) * u);
        %     end
        
        %% Bulding up the eqs to extract the actual rays in world coordinates
        
        eq1 = (transpose(n) * v_sym)^2 - (cos(tht2))^2;
        eq2 = transpose(cross(u,n)) * v_sym;
        eq3 = vx^2 + vy^2 + vz^2 - 1;
        sols = solve(eq1,eq2,eq3, vx,vy,vz);
        x = sols.vx; y = sols.vy; z = sols.vz;
        for i=1:length(x)
            v = eval([x(i);y(i);z(i)]);
            X = P - rand() * v;
            if (transpose(n)*C+d)*(transpose(n)*X+d) < 0 && norm(r * cross(u,n) - cross(v,n)) < thresh
                break;
            else
                X = [];
                v = [];
            end
        end
        
        if ~isempty(X) && isreal(X)
            datasm = [datasm;[inv(K)*u, transpose(R)*X * alpha]];
        else
            fprintf(" failed to setup \n");
        end
        if size(datasm,1) == 18
            break;
        end
    end
    datas_p6p = [datas_p6p; [transpose(datasm(:,1)), transpose(datasm(:,2))]];
    % %%reverse coding now for the actual equations
    % clearvars -except q_gt t_gt r_gt datas d Ps;
    % syms tx ty tz q1 q2 q3
    % t = [tx;ty;tz];
    % q = [1;q1;q2;q3];
    % R = quat2rot(q);
    % C = t;
    % nc = [0;0;1];
    % n = R * nc;
    % r = r_gt;
    % eqs = [];
    u = reshape(datas_p6p(end, 1:18),3,6);
    X = reshape(datas_p6p(end, 19:end),3,6);
    
%     transpose(cross(alpha*transpose(R)*K*u,X-alpha*transpose(R)*C))*[0;0;1]
    
    %     for k=1:5
    %     u = U(:,k);
    %     eqs = [eqs; transpose(n) * cross(u, X(:,k)-C)];
    %     end    
end

gt_p6p = {q_gt, t_gt, r_gt, K(3,3)};
end

