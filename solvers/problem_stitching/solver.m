function[PEPsolutions] = solve(data) 
hiddenvarnumber = 1;
c1 = data(1);c2 = data(2);c3 = data(3);c4 = data(4);c5 = data(5);c6 = data(6);c7 = data(7);c8 = data(8);c9 = data(9);c10 = data(10);c11 = data(11);c12 = data(12);c13 = data(13);c14 = data(14);c15 = data(15);c16 = data(16);c17 = data(17);c18 = data(18);c19 = data(19);c20 = data(20);c21 = data(21);c22 = data(22);c23 = data(23);c24 = data(24);c25 = data(25);c26 = data(26);c27 = data(27);c28 = data(28);c29 = data(29);c30 = data(30);c31 = data(31);c32 = data(32);
t1 = c1;
t2 = c2;
t3 = c3;
t4 = c4;
t5 = c5;
t6 = c6;
t7 = c7;
t8 = c8;
t9 = c9;
t10 = c10;
t11 = c11;
t12 = c12;
t13 = c13;
t14 = c14;
t15 = c15;
t16 = c16;
t17 = c17;
t18 = c18;
t19 = c19;
t20 = c20;
t21 = c21;
t22 = c22;
t23 = c23;
t24 = c24;
t25 = c25;
t26 = c26;
t27 = c27;
t28 = c28;
t29 = c29;
t30 = c30;
t31 = c31;
t32 = c32;
M = zeros(3,18);
M(1,1) = t1;
M(1,2) = t2;
M(1,3) = t3;
M(1,4) = t4;
M(1,5) = t5;
M(1,6) = t6;
M(1,7) = t7;
M(1,8) = t8;
M(1,9) = t10;
M(1,10) = t9;
M(1,11) = t11;
M(1,12) = t13;
M(1,13) = t12;
M(1,14) = t14;
M(1,16) = t15;
M(1,18) = t16;
M(2,1) = t17;
M(2,2) = t18;
M(2,3) = t19;
M(2,4) = t20;
M(2,5) = t21;
M(2,6) = t22;
M(2,7) = t23;
M(2,8) = t24;
M(2,9) = t26;
M(2,10) = t25;
M(2,11) = t27;
M(2,12) = t29;
M(2,13) = t28;
M(2,14) = t30;
M(2,16) = t31;
M(2,18) = t32;
M(3,15) = 1;
M(3,17) = -1;
M = [rref(M(1:0,:)); M(1:end,:)];
nc1 = M(1);nc2 = M(2);nc3 = M(4);nc4 = M(5);nc5 = M(7);nc6 = M(8);nc7 = M(10);nc8 = M(11);nc9 = M(13);nc10 = M(14);nc11 = M(16);nc12 = M(17);nc13 = M(19);nc14 = M(20);nc15 = M(22);nc16 = M(23);nc17 = M(25);nc18 = M(26);nc19 = M(28);nc20 = M(29);nc21 = M(31);nc22 = M(32);nc23 = M(34);nc24 = M(35);nc25 = M(37);nc26 = M(38);nc27 = M(40);nc28 = M(41);nc29 = M(46);nc30 = M(47);nc31 = M(52);nc32 = M(53);
Cs = zeros(36,72);
Cs(1,1) = nc29;
Cs(1,2) = nc27;
Cs(1,3) = nc23;
Cs(1,6) = nc25;
Cs(1,9) = nc15;
Cs(1,11) = nc11;
Cs(1,13) = nc5;
Cs(1,15) = nc3;
Cs(1,19) = nc31;
Cs(1,20) = nc21;
Cs(1,21) = nc17;
Cs(1,22) = nc19;
Cs(1,23) = nc13;
Cs(1,25) = nc9;
Cs(1,27) = nc7;
Cs(1,30) = nc1;
Cs(2,1) = nc31;
Cs(2,2) = nc29;
Cs(2,3) = nc27;
Cs(2,4) = nc23;
Cs(2,7) = nc17;
Cs(2,9) = nc19;
Cs(2,13) = nc7;
Cs(2,14) = nc5;
Cs(2,20) = nc25;
Cs(2,21) = nc21;
Cs(2,23) = nc15;
Cs(2,24) = nc13;
Cs(2,25) = nc11;
Cs(2,26) = nc9;
Cs(2,29) = nc3;
Cs(2,31) = nc1;
Cs(3,2) = nc31;
Cs(3,3) = nc29;
Cs(3,4) = nc27;
Cs(3,5) = nc23;
Cs(3,7) = nc21;
Cs(3,8) = nc17;
Cs(3,10) = nc13;
Cs(3,12) = nc9;
Cs(3,14) = nc7;
Cs(3,16) = nc3;
Cs(3,21) = nc25;
Cs(3,23) = nc19;
Cs(3,24) = nc15;
Cs(3,26) = nc11;
Cs(3,28) = nc5;
Cs(3,32) = nc1;
Cs(4,6) = nc31;
Cs(4,7) = nc23;
Cs(4,9) = nc25;
Cs(4,11) = nc19;
Cs(4,13) = nc11;
Cs(4,14) = nc9;
Cs(4,15) = nc7;
Cs(4,17) = nc1;
Cs(4,20) = nc29;
Cs(4,21) = nc27;
Cs(4,23) = nc21;
Cs(4,24) = nc17;
Cs(4,25) = nc15;
Cs(4,26) = nc13;
Cs(4,29) = nc5;
Cs(4,31) = nc3;
Cs(5,7) = nc27;
Cs(5,8) = nc23;
Cs(5,10) = nc17;
Cs(5,12) = nc13;
Cs(5,14) = nc11;
Cs(5,16) = nc5;
Cs(5,20) = nc31;
Cs(5,21) = nc29;
Cs(5,23) = nc25;
Cs(5,24) = nc21;
Cs(5,25) = nc19;
Cs(5,26) = nc15;
Cs(5,28) = nc9;
Cs(5,29) = nc7;
Cs(5,32) = nc3;
Cs(5,33) = nc1;
Cs(6,9) = nc29;
Cs(6,11) = nc25;
Cs(6,13) = nc15;
Cs(6,14) = nc13;
Cs(6,15) = nc11;
Cs(6,17) = nc3;
Cs(6,22) = nc31;
Cs(6,23) = nc27;
Cs(6,24) = nc23;
Cs(6,25) = nc21;
Cs(6,26) = nc17;
Cs(6,27) = nc19;
Cs(6,29) = nc9;
Cs(6,30) = nc7;
Cs(6,31) = nc5;
Cs(6,34) = nc1;
Cs(7,9) = nc31;
Cs(7,10) = nc23;
Cs(7,12) = nc17;
Cs(7,13) = nc19;
Cs(7,14) = nc15;
Cs(7,16) = nc9;
Cs(7,18) = nc1;
Cs(7,23) = nc29;
Cs(7,24) = nc27;
Cs(7,25) = nc25;
Cs(7,26) = nc21;
Cs(7,28) = nc13;
Cs(7,29) = nc11;
Cs(7,31) = nc7;
Cs(7,32) = nc5;
Cs(7,33) = nc3;
Cs(8,11) = nc31;
Cs(8,12) = nc23;
Cs(8,13) = nc25;
Cs(8,14) = nc21;
Cs(8,15) = nc19;
Cs(8,16) = nc13;
Cs(8,17) = nc7;
Cs(8,18) = nc3;
Cs(8,25) = nc29;
Cs(8,26) = nc27;
Cs(8,28) = nc17;
Cs(8,29) = nc15;
Cs(8,31) = nc11;
Cs(8,32) = nc9;
Cs(8,33) = nc5;
Cs(8,35) = nc1;
Cs(9,13) = nc29;
Cs(9,14) = nc27;
Cs(9,15) = nc25;
Cs(9,16) = nc17;
Cs(9,17) = nc11;
Cs(9,18) = nc5;
Cs(9,27) = nc31;
Cs(9,28) = nc23;
Cs(9,29) = nc21;
Cs(9,30) = nc19;
Cs(9,31) = nc15;
Cs(9,32) = nc13;
Cs(9,33) = nc9;
Cs(9,34) = nc7;
Cs(9,35) = nc3;
Cs(9,36) = nc1;
Cs(10,1) = nc30;
Cs(10,2) = nc28;
Cs(10,3) = nc24;
Cs(10,6) = nc26;
Cs(10,9) = nc16;
Cs(10,11) = nc12;
Cs(10,13) = nc6;
Cs(10,15) = nc4;
Cs(10,19) = nc32;
Cs(10,20) = nc22;
Cs(10,21) = nc18;
Cs(10,22) = nc20;
Cs(10,23) = nc14;
Cs(10,25) = nc10;
Cs(10,27) = nc8;
Cs(10,30) = nc2;
Cs(11,1) = nc32;
Cs(11,2) = nc30;
Cs(11,3) = nc28;
Cs(11,4) = nc24;
Cs(11,7) = nc18;
Cs(11,9) = nc20;
Cs(11,13) = nc8;
Cs(11,14) = nc6;
Cs(11,20) = nc26;
Cs(11,21) = nc22;
Cs(11,23) = nc16;
Cs(11,24) = nc14;
Cs(11,25) = nc12;
Cs(11,26) = nc10;
Cs(11,29) = nc4;
Cs(11,31) = nc2;
Cs(12,2) = nc32;
Cs(12,3) = nc30;
Cs(12,4) = nc28;
Cs(12,5) = nc24;
Cs(12,7) = nc22;
Cs(12,8) = nc18;
Cs(12,10) = nc14;
Cs(12,12) = nc10;
Cs(12,14) = nc8;
Cs(12,16) = nc4;
Cs(12,21) = nc26;
Cs(12,23) = nc20;
Cs(12,24) = nc16;
Cs(12,26) = nc12;
Cs(12,28) = nc6;
Cs(12,32) = nc2;
Cs(13,6) = nc32;
Cs(13,7) = nc24;
Cs(13,9) = nc26;
Cs(13,11) = nc20;
Cs(13,13) = nc12;
Cs(13,14) = nc10;
Cs(13,15) = nc8;
Cs(13,17) = nc2;
Cs(13,20) = nc30;
Cs(13,21) = nc28;
Cs(13,23) = nc22;
Cs(13,24) = nc18;
Cs(13,25) = nc16;
Cs(13,26) = nc14;
Cs(13,29) = nc6;
Cs(13,31) = nc4;
Cs(14,7) = nc28;
Cs(14,8) = nc24;
Cs(14,10) = nc18;
Cs(14,12) = nc14;
Cs(14,14) = nc12;
Cs(14,16) = nc6;
Cs(14,20) = nc32;
Cs(14,21) = nc30;
Cs(14,23) = nc26;
Cs(14,24) = nc22;
Cs(14,25) = nc20;
Cs(14,26) = nc16;
Cs(14,28) = nc10;
Cs(14,29) = nc8;
Cs(14,32) = nc4;
Cs(14,33) = nc2;
Cs(15,9) = nc30;
Cs(15,11) = nc26;
Cs(15,13) = nc16;
Cs(15,14) = nc14;
Cs(15,15) = nc12;
Cs(15,17) = nc4;
Cs(15,22) = nc32;
Cs(15,23) = nc28;
Cs(15,24) = nc24;
Cs(15,25) = nc22;
Cs(15,26) = nc18;
Cs(15,27) = nc20;
Cs(15,29) = nc10;
Cs(15,30) = nc8;
Cs(15,31) = nc6;
Cs(15,34) = nc2;
Cs(16,9) = nc32;
Cs(16,10) = nc24;
Cs(16,12) = nc18;
Cs(16,13) = nc20;
Cs(16,14) = nc16;
Cs(16,16) = nc10;
Cs(16,18) = nc2;
Cs(16,23) = nc30;
Cs(16,24) = nc28;
Cs(16,25) = nc26;
Cs(16,26) = nc22;
Cs(16,28) = nc14;
Cs(16,29) = nc12;
Cs(16,31) = nc8;
Cs(16,32) = nc6;
Cs(16,33) = nc4;
Cs(17,11) = nc32;
Cs(17,12) = nc24;
Cs(17,13) = nc26;
Cs(17,14) = nc22;
Cs(17,15) = nc20;
Cs(17,16) = nc14;
Cs(17,17) = nc8;
Cs(17,18) = nc4;
Cs(17,25) = nc30;
Cs(17,26) = nc28;
Cs(17,28) = nc18;
Cs(17,29) = nc16;
Cs(17,31) = nc12;
Cs(17,32) = nc10;
Cs(17,33) = nc6;
Cs(17,35) = nc2;
Cs(18,13) = nc30;
Cs(18,14) = nc28;
Cs(18,15) = nc26;
Cs(18,16) = nc18;
Cs(18,17) = nc12;
Cs(18,18) = nc6;
Cs(18,27) = nc32;
Cs(18,28) = nc24;
Cs(18,29) = nc22;
Cs(18,30) = nc20;
Cs(18,31) = nc16;
Cs(18,32) = nc14;
Cs(18,33) = nc10;
Cs(18,34) = nc8;
Cs(18,35) = nc4;
Cs(18,36) = nc2;
Cs(19,6) = 1;
Cs(19,37) = -1;
Cs(20,20) = 1;
Cs(20,38) = -1;
Cs(21,21) = 1;
Cs(21,39) = -1;
Cs(22,7) = 1;
Cs(22,40) = -1;
Cs(23,8) = 1;
Cs(23,41) = -1;
Cs(24,22) = 1;
Cs(24,42) = -1;
Cs(25,24) = 1;
Cs(25,43) = -1;
Cs(26,10) = 1;
Cs(26,44) = -1;
Cs(27,11) = 1;
Cs(27,45) = -1;
Cs(28,12) = 1;
Cs(28,46) = -1;
Cs(29,27) = 1;
Cs(29,47) = -1;
Cs(30,28) = 1;
Cs(30,48) = -1;
Cs(31,15) = 1;
Cs(31,49) = -1;
Cs(32,29) = 1;
Cs(32,50) = -1;
Cs(33,30) = 1;
Cs(33,51) = -1;
Cs(34,32) = 1;
Cs(34,52) = -1;
Cs(35,34) = 1;
Cs(35,53) = -1;
Cs(36,35) = 1;
Cs(36,54) = -1;
solForm = [[-1] [-1]; [0] [1]; [0] [0]; [0] [0]; [0] [0]; [1] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0]; [0] [0];];

allCss = mat2cell(Cs, 36, ones(1,2) * 36);
noOfVars = 2; 
C0 = allCss{1}; 
C1 = allCss{2};
A1 = C0(1:end-18,1:18);
A2 = C0(1:end-18,19:end);
B1 = C0(end-18+1 : end,1:18);
B2 = C0(end-18+1 : end, 19:end);
X = B1 - B2 * (A2 \ A1); 
[V,D] = eig(X);
EValues = diag(D); 
EVectors = V;
good = ~(isinf(EValues) | isnan(EValues));
EValues = EValues(good);
EVectors = EVectors(:,good);

% The eigen values and eigen vectors have been now extracted
PEPsolutions=[];
nonInfEValuesInd = ~isinf(EValues);
NinfEValues = EValues(nonInfEValuesInd);
NinfEVectors = EVectors(:,nonInfEValuesInd);
noOfEvalues = length(NinfEValues);
sizeOfEvectors = length(solForm);

% We basically, then iterate through all of the received eigenvalues and
% then try to remove those that do not satisfy the criterion for the
% corresponding eigenvectors to have a form that is the same as that of the
% monomial vector.
% In fact we also remove those eigenvalues and eigenvectors which give us
% solutions that have infinity value for atleast one variable.
g = 1;
% monstocheck(rowstorem1)=[];
% monstocheck(rowstorem2)=[];
allvarsextracted = sum(abs(solForm));
if length(find(allvarsextracted==0)) == 0
    
    for i = 1:noOfEvalues
        otherVarValues = NinfEVectors(:,i);
        for k = 1:noOfVars
            sols(i,k) = 1;
            for j = 1:sizeOfEvectors
                sols(i,k) = sols(i,k) * otherVarValues(j) ^ solForm(j,k);
            end
        end
        %     sols(i,1) = NinfEValues(i);
        sols(i,k + 1) = NinfEValues(i);
        PEPsolutions(g,:) = sols(i,:);
        g = g+1;
        
    end

else
    PEPsolutions = [];
end
end