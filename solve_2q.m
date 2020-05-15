function [v,e,Y] = solve_2q(a, b)

A1=[a(6) a(5) a(3) 0;0 a(6) a(5) a(3);b(6) b(5) b(3) 0;0 b(6) b(5) b(3)];
A2=[a(4) a(2) 0 a(1) 0;0 a(4) a(2) 0 a(1);b(4) b(2) 0 b(1) 0;0 b(4) b(2) 0 b(1)];
B1=[-1 0 0 0;0 -1 0 0;0 0 -1 0;0 0 0 0;0 0 0 0];
B2=[zeros(3,5);-1 0 0 0 0;0 -1 0 0 0];

X=B2-B1/A1*A2;
s=X(1,3)./X(1,5);
w=[0 0 1 0 -s]';
Y=X-w*X(3,:);
Y(3,:)=[];Y(:,3)=[];
[v,e]=eig(-Y);

end
