function[indicesToRemove, numOfRedCoeffMat, zeigvalindx, solverTemplate, extendedbasis, nullspacesize, depdXcols, nzrows, depdCcols, indepdCcols, mdepdXcols, mindepdXcols, indepdCrows, rowstorem] = reducemonbasis(data, noofdatacoeff, foldername)
hiddenvarnumber = 5;
for i = 1:noofdatacoeff
eval(strjoin({'c',num2str(i),' = ', 'data(',num2str(i),');'},''));
end
t1 = c17;
t2 = c49;
t3 = c20;
t4 = c52;
t5 = c18;
t6 = c50;
t7 = c21;
t8 = c53;
t9 = c19;
t10 = c22+c51;
t11 = c54;
t12 = c23;
t13 = c24+c55;
t14 = c56;
t15 = c41;
t16 = c57;
t17 = c44;
t18 = c60;
t19 = c42;
t20 = c58;
t21 = c45;
t22 = c61;
t23 = c43;
t24 = c46+c59;
t25 = c62;
t26 = c47;
t27 = c48+c63;
t28 = c64;
t29 = c65+1;
t30 = c68;
t31 = c66;
t32 = c69;
t33 = c67;
t34 = c70;
t35 = c71;
t36 = c72;
t37 = -c16*c32+c40*c8;
t38 = -c15*c31+c39*c7;
t39 = -c12*c28+c12*c48+c16*c44-c20*c40-c24*c36+c36*c4;
t40 = -c13*c29+c21*c32+c24*c29+c37*c5-c45*c8-c48*c5;
t41 = c21*c29-c45*c5;
t42 = c12*c44-c20*c36;
t43 = -c17*c33+c41*c9;
t44 = -c12*c29-c13*c28+c13*c48+c16*c45+c20*c32-c21*c40+c24*c28-c24*c37+c36*c5+c37*c4-c4*c48-c44*c8;
t45 = c12*c41-c17*c36-c20*c33+c44*c9;
t46 = c21*c31+c23*c29-c45*c7-c47*c5;
t47 = c23*c31-c47*c7;
t48 = c12*c47+c15*c44-c20*c39-c23*c36;
t49 = c15*c47-c23*c39;
t50 = c1*c33+c14*c41-c17*c38-c22*c33-c25*c9+c46*c9;
t51 = -c10*c26+c18*c30+c2*c34-c2*c46+c22*c26-c42*c6;
t52 = -c11*c27+c3*c35;
t53 = c18*c26-c2*c42;
t54 = c1*c36-c12*c25+c12*c46+c14*c44+c16*c41-c17*c40-c20*c38-c22*c36-c24*c33-c28*c9+c33*c4+c48*c9;
t55 = c1*c38-c14*c25+c14*c46-c22*c38-c30*c9+c33*c6;
t56 = -c10*c29-c13*c26+c18*c32+c2*c37-c2*c48+c21*c30+c22*c29+c24*c26+c34*c5-c42*c8-c45*c6-c46*c5;
t57 = -c10*c30-c14*c26+c2*c38+c22*c30+c34*c6-c46*c6;
t58 = -c11*c30-c14*c27+c3*c38+c35*c6;
t59 = c12*c45+c13*c44+c20*c28-c20*c37-c21*c36-c4*c44;
t60 = c13*c45+c20*c29+c21*c28-c21*c37-c4*c45-c44*c5;
t61 = c18*c29-c2*c45+c21*c26-c42*c5;
t62 = c1*c40-c12*c30-c14*c28+c14*c48-c16*c25+c16*c46-c22*c40-c24*c38-c32*c9+c33*c8+c36*c6+c38*c4;
t63 = -c12*c31-c15*c28+c15*c48+c16*c47-c23*c40-c24*c39+c36*c7+c39*c4;
t64 = -c10*c32-c13*c30-c14*c29-c16*c26+c2*c40+c22*c32+c24*c30+c34*c8+c37*c6+c38*c5-c46*c8-c48*c6;
t65 = -c13*c31-c15*c29+c23*c32+c24*c31+c37*c7+c39*c5-c47*c8-c48*c7;
t66 = -c11*c31-c15*c27+c3*c39+c35*c7;
t67 = -c11*c32-c14*c31-c15*c30-c16*c27+c3*c40+c35*c8+c38*c7+c39*c6;
t68 = c11*c44+c12*c43+c15*c41-c17*c39-c19*c36-c20*c35-c23*c33+c47*c9;
t69 = c11*c47+c15*c43-c19*c39-c23*c35;
t70 = c1*c34-c1*c46-c10*c25+c10*c46+c14*c42+c17*c30-c18*c38+c2*c33+c22*c25-c22*c34-c26*c9-c41*c6;
t71 = c1*c35-c11*c25+c11*c46+c14*c43-c19*c38-c22*c35-c27*c9+c3*c33;
t72 = -c10*c27-c11*c26+c19*c30+c2*c35+c22*c27+c3*c34-c3*c46-c43*c6;
t73 = -c1*c44+c10*c44+c12*c42+c13*c41+c17*c28-c17*c37-c18*c36+c20*c25-c20*c34-c21*c33-c4*c41+c45*c9;
t74 = -c1*c45+c10*c45+c13*c42+c17*c29+c18*c28-c18*c37-c2*c44+c20*c26+c21*c25-c21*c34-c4*c42-c41*c5;
t75 = c18*c31+c19*c29-c2*c47+c21*c27+c23*c26-c3*c45-c42*c7-c43*c5;
t76 = c19*c31+c23*c27-c3*c47-c43*c7;
t77 = c1*c39-c11*c28+c11*c48-c12*c27+c14*c47-c15*c25+c15*c46+c16*c43-c19*c40-c22*c39-c23*c38-c24*c35+c3*c36-c31*c9+c33*c7+c35*c4;
t78 = -c10*c31-c11*c29-c13*c27-c15*c26+c19*c32+c2*c39+c22*c31+c23*c30+c24*c27+c3*c37-c3*c48+c34*c7+c35*c5-c43*c8-c46*c7-c47*c6;
t79 = -c1*c41+c10*c41+c17*c25-c17*c34-c18*c33+c42*c9;
t80 = -c1*c42+c10*c42+c17*c26+c18*c25-c18*c34-c2*c41;
t81 = c18*c27+c19*c26-c2*c43-c3*c42;
t82 = c19*c27-c3*c43;
t83 = c11*c41-c17*c35-c19*c33+c43*c9;
t84 = c11*c43-c19*c35;
t85 = c1*c37+c2*c36+c4*c34+c5*c33-c9*c29-c10*c28-c12*c26-c13*c25-c1*c48-c8*c41+c17*c32+c24*c25-c4*c46-c6*c44+c20*c30+c22*c28+c10*c48+c16*c42-c18*c40-c24*c34+c13*c46+c14*c45-c21*c38-c22*c37;
t86 = c13*c47+c15*c45+c20*c31-c21*c39+c23*c28-c23*c37-c4*c47-c44*c7;
t87 = -c15*c32-c16*c31+c39*c8+c40*c7;
t88 = -c12*c32-c16*c28+c16*c48-c24*c40+c36*c8+c4*c40;
t89 = -c13*c32-c16*c29+c24*c32+c37*c8+c40*c5-c48*c8;
t90 = -c14*c32-c16*c30+c38*c8+c40*c6;
t91 = -c14*c30+c38*c6;
t92 = -c1*c43+c10*c43+c11*c42+c17*c27-c18*c35+c19*c25-c19*c34-c3*c41;
t93 = -c1*c47+c10*c47+c11*c45+c13*c43+c15*c42+c17*c31-c18*c39+c19*c28-c19*c37+c20*c27-c21*c35+c23*c25-c23*c34-c3*c44-c4*c43-c41*c7;
t94 = 1;
t95 = -1;
M = zeros(5,58);
M(1,35) = t1;
M(1,37) = t5;
M(1,40) = t9;
M(1,44) = t2;
M(1,46) = t6;
M(1,49) = t10;
M(1,50) = t3;
M(1,51) = t7;
M(1,52) = t12;
M(1,53) = t11;
M(1,54) = t4;
M(1,55) = t8;
M(1,56) = t13;
M(1,58) = t14;
M(2,35) = t15;
M(2,37) = t19;
M(2,40) = t23;
M(2,44) = t16;
M(2,46) = t20;
M(2,49) = t24;
M(2,50) = t17;
M(2,51) = t21;
M(2,52) = t26;
M(2,53) = t25;
M(2,54) = t18;
M(2,55) = t22;
M(2,56) = t27;
M(2,58) = t28;
M(3,44) = t29;
M(3,46) = t31;
M(3,49) = t33;
M(3,53) = t34;
M(3,54) = t30;
M(3,55) = t32;
M(3,56) = t35;
M(3,58) = t36;
M(4,1) = t43;
M(4,2) = t79;
M(4,3) = t80;
M(4,4) = t53;
M(4,5) = t83;
M(4,6) = t92;
M(4,7) = t81;
M(4,8) = t84;
M(4,9) = t82;
M(4,10) = t50;
M(4,11) = t45;
M(4,12) = t70;
M(4,13) = t73;
M(4,14) = t51;
M(4,15) = t74;
M(4,16) = t61;
M(4,17) = t71;
M(4,18) = t68;
M(4,19) = t72;
M(4,20) = t93;
M(4,21) = t75;
M(4,22) = t52;
M(4,23) = t69;
M(4,24) = t76;
M(4,25) = t55;
M(4,26) = t54;
M(4,27) = t42;
M(4,28) = t57;
M(4,29) = t85;
M(4,30) = t59;
M(4,31) = t56;
M(4,32) = t60;
M(4,33) = t41;
M(4,34) = t58;
M(4,35) = t77;
M(4,36) = t48;
M(4,37) = t78;
M(4,38) = t86;
M(4,39) = t46;
M(4,40) = t66;
M(4,41) = t49;
M(4,42) = t47;
M(4,43) = t91;
M(4,44) = t62;
M(4,45) = t39;
M(4,46) = t64;
M(4,47) = t44;
M(4,48) = t40;
M(4,49) = t67;
M(4,50) = t63;
M(4,51) = t65;
M(4,52) = t38;
M(4,53) = t90;
M(4,54) = t88;
M(4,55) = t89;
M(4,56) = t87;
M(4,58) = t37;
M(5,53) = t94;
M(5,57) = t95;
M = [rref(M(1:4,:)); M(5:end,:)];
ncinds = [6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56, 61, 66, 71, 76, 81, 86, 91, 96, 101, 106, 111, 116, 121, 126, 131, 136, 141, 146, 151, 156, 161, 166, 176, 186, 191, 196, 197, 198, 201, 206, 211, 221, 226, 227, 228, 229, 231, 236, 241, 242, 243, 244, 246, 247, 248, 251, 252, 253, 256, 257, 258, 261, 262, 263, 264, 266, 267, 268, 269, 271, 272, 273, 274, 276, 277, 278, 279, 286, 287, 288, 289];
for ncind = 1:82
    eval(strjoin({'nc', num2str(ncind), ' = ', 'M(ncinds(ncind));'}, '') )
end
ArrayOfCsNames = '';
sizeOfC = 122;
noOfVars = 5;
sparseBasis = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2; 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 3 3 3 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 3 3 3 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 3 3 3 4; 0 0 0 0 0 0 1 1 1 1 1 2 2 2 2 3 3 3 4 4 0 0 0 0 0 1 1 1 1 2 2 2 3 3 0 0 0 1 1 2 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 2 2 2 2 3 3 3 4 4 0 0 0 0 0 1 1 1 1 2 2 2 3 3 0 0 0 1 1 2 0 0 1 0 0 0 0 0 1 1 1 1 2 2 2 3 3 4 0 0 0 0 1 1 1 2 2 3 0 0 0 1 1 2 0 0 1 0; 0 1 2 3 4 5 0 1 2 3 4 0 1 2 3 0 1 2 0 1 0 1 2 3 4 0 1 2 3 0 1 2 0 1 0 1 2 0 1 0 0 1 0 0 0 1 2 3 4 5 0 1 2 3 4 0 1 2 3 0 1 2 0 1 0 1 2 3 4 0 1 2 3 0 1 2 0 1 0 1 2 0 1 0 0 1 0 0 0 1 2 3 0 1 2 3 0 1 2 0 1 0 0 1 2 3 0 1 2 0 1 0 0 1 2 0 1 0 0 1 0 0;];
solFromEigenVectors = [-1 -1 -1 -1; 0 0 0 1; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 1 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 1 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 1 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;];
Cs = zeros(122,244);
Cs(1,1) = nc79;
Cs(1,2) = nc75;
Cs(1,3) = nc60;
Cs(1,7) = nc71;
Cs(1,8) = nc57;
Cs(1,9) = nc41;
Cs(1,12) = nc49;
Cs(1,13) = nc36;
Cs(1,16) = nc32;
Cs(1,21) = nc67;
Cs(1,22) = nc54;
Cs(1,23) = nc40;
Cs(1,26) = nc48;
Cs(1,27) = nc35;
Cs(1,30) = nc31;
Cs(1,35) = nc43;
Cs(1,36) = nc34;
Cs(1,38) = nc29;
Cs(1,41) = nc26;
Cs(1,45) = nc63;
Cs(1,46) = nc50;
Cs(1,47) = nc37;
Cs(1,51) = nc44;
Cs(1,53) = nc23;
Cs(1,56) = nc30;
Cs(1,57) = nc20;
Cs(1,60) = nc15;
Cs(1,67) = nc22;
Cs(1,70) = nc28;
Cs(1,71) = nc19;
Cs(1,74) = nc14;
Cs(1,79) = nc25;
Cs(1,80) = nc17;
Cs(1,82) = nc12;
Cs(1,85) = nc10;
Cs(1,89) = nc42;
Cs(1,90) = nc33;
Cs(1,91) = nc21;
Cs(1,93) = nc27;
Cs(1,94) = nc18;
Cs(1,95) = nc8;
Cs(1,97) = nc13;
Cs(1,98) = nc6;
Cs(1,100) = nc3;
Cs(1,103) = nc24;
Cs(1,104) = nc16;
Cs(1,105) = nc7;
Cs(1,107) = nc11;
Cs(1,108) = nc5;
Cs(1,110) = nc2;
Cs(1,113) = nc9;
Cs(1,114) = nc4;
Cs(1,116) = nc1;
Cs(1,119) = 1;
Cs(2,2) = nc79;
Cs(2,3) = nc75;
Cs(2,4) = nc60;
Cs(2,8) = nc71;
Cs(2,9) = nc57;
Cs(2,10) = nc41;
Cs(2,13) = nc49;
Cs(2,14) = nc36;
Cs(2,17) = nc32;
Cs(2,22) = nc67;
Cs(2,23) = nc54;
Cs(2,24) = nc40;
Cs(2,27) = nc48;
Cs(2,28) = nc35;
Cs(2,31) = nc31;
Cs(2,36) = nc43;
Cs(2,37) = nc34;
Cs(2,39) = nc29;
Cs(2,42) = nc26;
Cs(2,46) = nc63;
Cs(2,47) = nc50;
Cs(2,48) = nc37;
Cs(2,52) = nc44;
Cs(2,54) = nc23;
Cs(2,57) = nc30;
Cs(2,58) = nc20;
Cs(2,61) = nc15;
Cs(2,68) = nc22;
Cs(2,71) = nc28;
Cs(2,72) = nc19;
Cs(2,75) = nc14;
Cs(2,80) = nc25;
Cs(2,81) = nc17;
Cs(2,83) = nc12;
Cs(2,86) = nc10;
Cs(2,90) = nc42;
Cs(2,91) = nc33;
Cs(2,92) = nc21;
Cs(2,94) = nc27;
Cs(2,95) = nc18;
Cs(2,96) = nc8;
Cs(2,98) = nc13;
Cs(2,99) = nc6;
Cs(2,101) = nc3;
Cs(2,104) = nc24;
Cs(2,105) = nc16;
Cs(2,106) = nc7;
Cs(2,108) = nc11;
Cs(2,109) = nc5;
Cs(2,111) = nc2;
Cs(2,114) = nc9;
Cs(2,115) = nc4;
Cs(2,117) = nc1;
Cs(2,120) = 1;
Cs(3,7) = nc79;
Cs(3,8) = nc75;
Cs(3,9) = nc60;
Cs(3,12) = nc71;
Cs(3,13) = nc57;
Cs(3,14) = nc41;
Cs(3,16) = nc49;
Cs(3,17) = nc36;
Cs(3,19) = nc32;
Cs(3,26) = nc67;
Cs(3,27) = nc54;
Cs(3,28) = nc40;
Cs(3,30) = nc48;
Cs(3,31) = nc35;
Cs(3,33) = nc31;
Cs(3,38) = nc43;
Cs(3,39) = nc34;
Cs(3,40) = nc29;
Cs(3,43) = nc26;
Cs(3,51) = nc63;
Cs(3,52) = nc50;
Cs(3,53) = nc37;
Cs(3,56) = nc44;
Cs(3,58) = nc23;
Cs(3,60) = nc30;
Cs(3,61) = nc20;
Cs(3,63) = nc15;
Cs(3,72) = nc22;
Cs(3,74) = nc28;
Cs(3,75) = nc19;
Cs(3,77) = nc14;
Cs(3,82) = nc25;
Cs(3,83) = nc17;
Cs(3,84) = nc12;
Cs(3,87) = nc10;
Cs(3,93) = nc42;
Cs(3,94) = nc33;
Cs(3,95) = nc21;
Cs(3,97) = nc27;
Cs(3,98) = nc18;
Cs(3,99) = nc8;
Cs(3,100) = nc13;
Cs(3,101) = nc6;
Cs(3,102) = nc3;
Cs(3,107) = nc24;
Cs(3,108) = nc16;
Cs(3,109) = nc7;
Cs(3,110) = nc11;
Cs(3,111) = nc5;
Cs(3,112) = nc2;
Cs(3,116) = nc9;
Cs(3,117) = nc4;
Cs(3,118) = nc1;
Cs(3,121) = 1;
Cs(4,21) = nc79;
Cs(4,22) = nc75;
Cs(4,23) = nc60;
Cs(4,26) = nc71;
Cs(4,27) = nc57;
Cs(4,28) = nc41;
Cs(4,30) = nc49;
Cs(4,31) = nc36;
Cs(4,33) = nc32;
Cs(4,35) = nc67;
Cs(4,36) = nc54;
Cs(4,37) = nc40;
Cs(4,38) = nc48;
Cs(4,39) = nc35;
Cs(4,40) = nc31;
Cs(4,41) = nc43;
Cs(4,42) = nc34;
Cs(4,43) = nc29;
Cs(4,44) = nc26;
Cs(4,65) = nc63;
Cs(4,66) = nc50;
Cs(4,67) = nc37;
Cs(4,70) = nc44;
Cs(4,72) = nc23;
Cs(4,74) = nc30;
Cs(4,75) = nc20;
Cs(4,77) = nc15;
Cs(4,81) = nc22;
Cs(4,82) = nc28;
Cs(4,83) = nc19;
Cs(4,84) = nc14;
Cs(4,85) = nc25;
Cs(4,86) = nc17;
Cs(4,87) = nc12;
Cs(4,88) = nc10;
Cs(4,103) = nc42;
Cs(4,104) = nc33;
Cs(4,105) = nc21;
Cs(4,107) = nc27;
Cs(4,108) = nc18;
Cs(4,109) = nc8;
Cs(4,110) = nc13;
Cs(4,111) = nc6;
Cs(4,112) = nc3;
Cs(4,113) = nc24;
Cs(4,114) = nc16;
Cs(4,115) = nc7;
Cs(4,116) = nc11;
Cs(4,117) = nc5;
Cs(4,118) = nc2;
Cs(4,119) = nc9;
Cs(4,120) = nc4;
Cs(4,121) = nc1;
Cs(4,122) = 1;
Cs(5,1) = nc80;
Cs(5,2) = nc76;
Cs(5,3) = nc61;
Cs(5,7) = nc72;
Cs(5,8) = nc58;
Cs(5,21) = nc68;
Cs(5,22) = nc55;
Cs(5,45) = nc64;
Cs(5,46) = nc51;
Cs(5,47) = nc38;
Cs(5,51) = nc45;
Cs(5,66) = 1;
Cs(6,7) = nc80;
Cs(6,8) = nc76;
Cs(6,9) = nc61;
Cs(6,12) = nc72;
Cs(6,13) = nc58;
Cs(6,26) = nc68;
Cs(6,27) = nc55;
Cs(6,51) = nc64;
Cs(6,52) = nc51;
Cs(6,53) = nc38;
Cs(6,56) = nc45;
Cs(6,71) = 1;
Cs(7,21) = nc80;
Cs(7,22) = nc76;
Cs(7,23) = nc61;
Cs(7,26) = nc72;
Cs(7,27) = nc58;
Cs(7,35) = nc68;
Cs(7,36) = nc55;
Cs(7,65) = nc64;
Cs(7,66) = nc51;
Cs(7,67) = nc38;
Cs(7,70) = nc45;
Cs(7,80) = 1;
Cs(8,2) = nc80;
Cs(8,3) = nc76;
Cs(8,4) = nc61;
Cs(8,8) = nc72;
Cs(8,9) = nc58;
Cs(8,22) = nc68;
Cs(8,23) = nc55;
Cs(8,46) = nc64;
Cs(8,47) = nc51;
Cs(8,48) = nc38;
Cs(8,52) = nc45;
Cs(8,67) = 1;
Cs(9,3) = nc80;
Cs(9,4) = nc76;
Cs(9,5) = nc61;
Cs(9,9) = nc72;
Cs(9,10) = nc58;
Cs(9,23) = nc68;
Cs(9,24) = nc55;
Cs(9,47) = nc64;
Cs(9,48) = nc51;
Cs(9,49) = nc38;
Cs(9,53) = nc45;
Cs(9,68) = 1;
Cs(10,8) = nc80;
Cs(10,9) = nc76;
Cs(10,10) = nc61;
Cs(10,13) = nc72;
Cs(10,14) = nc58;
Cs(10,27) = nc68;
Cs(10,28) = nc55;
Cs(10,52) = nc64;
Cs(10,53) = nc51;
Cs(10,54) = nc38;
Cs(10,57) = nc45;
Cs(10,72) = 1;
Cs(11,12) = nc80;
Cs(11,13) = nc76;
Cs(11,14) = nc61;
Cs(11,16) = nc72;
Cs(11,17) = nc58;
Cs(11,30) = nc68;
Cs(11,31) = nc55;
Cs(11,56) = nc64;
Cs(11,57) = nc51;
Cs(11,58) = nc38;
Cs(11,60) = nc45;
Cs(11,75) = 1;
Cs(12,4) = nc80;
Cs(12,5) = nc76;
Cs(12,6) = nc61;
Cs(12,10) = nc72;
Cs(12,11) = nc58;
Cs(12,24) = nc68;
Cs(12,25) = nc55;
Cs(12,48) = nc64;
Cs(12,49) = nc51;
Cs(12,50) = nc38;
Cs(12,54) = nc45;
Cs(12,69) = 1;
Cs(13,9) = nc80;
Cs(13,10) = nc76;
Cs(13,11) = nc61;
Cs(13,14) = nc72;
Cs(13,15) = nc58;
Cs(13,28) = nc68;
Cs(13,29) = nc55;
Cs(13,53) = nc64;
Cs(13,54) = nc51;
Cs(13,55) = nc38;
Cs(13,58) = nc45;
Cs(13,73) = 1;
Cs(14,16) = nc80;
Cs(14,17) = nc76;
Cs(14,18) = nc61;
Cs(14,19) = nc72;
Cs(14,20) = nc58;
Cs(14,33) = nc68;
Cs(14,34) = nc55;
Cs(14,60) = nc64;
Cs(14,61) = nc51;
Cs(14,62) = nc38;
Cs(14,63) = nc45;
Cs(14,78) = 1;
Cs(15,1) = nc81;
Cs(15,2) = nc77;
Cs(15,3) = nc62;
Cs(15,7) = nc73;
Cs(15,8) = nc59;
Cs(15,21) = nc69;
Cs(15,22) = nc56;
Cs(15,45) = nc65;
Cs(15,46) = nc52;
Cs(15,47) = nc39;
Cs(15,51) = nc46;
Cs(15,52) = 1;
Cs(16,7) = nc81;
Cs(16,8) = nc77;
Cs(16,9) = nc62;
Cs(16,12) = nc73;
Cs(16,13) = nc59;
Cs(16,26) = nc69;
Cs(16,27) = nc56;
Cs(16,51) = nc65;
Cs(16,52) = nc52;
Cs(16,53) = nc39;
Cs(16,56) = nc46;
Cs(16,57) = 1;
Cs(17,21) = nc81;
Cs(17,22) = nc77;
Cs(17,23) = nc62;
Cs(17,26) = nc73;
Cs(17,27) = nc59;
Cs(17,35) = nc69;
Cs(17,36) = nc56;
Cs(17,65) = nc65;
Cs(17,66) = nc52;
Cs(17,67) = nc39;
Cs(17,70) = nc46;
Cs(17,71) = 1;
Cs(18,3) = nc81;
Cs(18,4) = nc77;
Cs(18,5) = nc62;
Cs(18,9) = nc73;
Cs(18,10) = nc59;
Cs(18,23) = nc69;
Cs(18,24) = nc56;
Cs(18,47) = nc65;
Cs(18,48) = nc52;
Cs(18,49) = nc39;
Cs(18,53) = nc46;
Cs(18,54) = 1;
Cs(19,8) = nc81;
Cs(19,9) = nc77;
Cs(19,10) = nc62;
Cs(19,13) = nc73;
Cs(19,14) = nc59;
Cs(19,27) = nc69;
Cs(19,28) = nc56;
Cs(19,52) = nc65;
Cs(19,53) = nc52;
Cs(19,54) = nc39;
Cs(19,57) = nc46;
Cs(19,58) = 1;
Cs(20,12) = nc81;
Cs(20,13) = nc77;
Cs(20,14) = nc62;
Cs(20,16) = nc73;
Cs(20,17) = nc59;
Cs(20,30) = nc69;
Cs(20,31) = nc56;
Cs(20,56) = nc65;
Cs(20,57) = nc52;
Cs(20,58) = nc39;
Cs(20,60) = nc46;
Cs(20,61) = 1;
Cs(21,22) = nc81;
Cs(21,23) = nc77;
Cs(21,24) = nc62;
Cs(21,27) = nc73;
Cs(21,28) = nc59;
Cs(21,36) = nc69;
Cs(21,37) = nc56;
Cs(21,66) = nc65;
Cs(21,67) = nc52;
Cs(21,68) = nc39;
Cs(21,71) = nc46;
Cs(21,72) = 1;
Cs(22,26) = nc81;
Cs(22,27) = nc77;
Cs(22,28) = nc62;
Cs(22,30) = nc73;
Cs(22,31) = nc59;
Cs(22,38) = nc69;
Cs(22,39) = nc56;
Cs(22,70) = nc65;
Cs(22,71) = nc52;
Cs(22,72) = nc39;
Cs(22,74) = nc46;
Cs(22,75) = 1;
Cs(23,35) = nc81;
Cs(23,36) = nc77;
Cs(23,37) = nc62;
Cs(23,38) = nc73;
Cs(23,39) = nc59;
Cs(23,41) = nc69;
Cs(23,42) = nc56;
Cs(23,79) = nc65;
Cs(23,80) = nc52;
Cs(23,81) = nc39;
Cs(23,82) = nc46;
Cs(23,83) = 1;
Cs(24,4) = nc81;
Cs(24,5) = nc77;
Cs(24,6) = nc62;
Cs(24,10) = nc73;
Cs(24,11) = nc59;
Cs(24,24) = nc69;
Cs(24,25) = nc56;
Cs(24,48) = nc65;
Cs(24,49) = nc52;
Cs(24,50) = nc39;
Cs(24,54) = nc46;
Cs(24,55) = 1;
Cs(25,13) = nc81;
Cs(25,14) = nc77;
Cs(25,15) = nc62;
Cs(25,17) = nc73;
Cs(25,18) = nc59;
Cs(25,31) = nc69;
Cs(25,32) = nc56;
Cs(25,57) = nc65;
Cs(25,58) = nc52;
Cs(25,59) = nc39;
Cs(25,61) = nc46;
Cs(25,62) = 1;
Cs(26,16) = nc81;
Cs(26,17) = nc77;
Cs(26,18) = nc62;
Cs(26,19) = nc73;
Cs(26,20) = nc59;
Cs(26,33) = nc69;
Cs(26,34) = nc56;
Cs(26,60) = nc65;
Cs(26,61) = nc52;
Cs(26,62) = nc39;
Cs(26,63) = nc46;
Cs(26,64) = 1;
Cs(27,1) = nc82;
Cs(27,2) = nc78;
Cs(27,7) = nc74;
Cs(27,21) = nc70;
Cs(27,45) = nc66;
Cs(27,46) = nc53;
Cs(27,51) = nc47;
Cs(27,65) = 1;
Cs(28,7) = nc82;
Cs(28,8) = nc78;
Cs(28,12) = nc74;
Cs(28,26) = nc70;
Cs(28,51) = nc66;
Cs(28,52) = nc53;
Cs(28,56) = nc47;
Cs(28,70) = 1;
Cs(29,21) = nc82;
Cs(29,22) = nc78;
Cs(29,26) = nc74;
Cs(29,35) = nc70;
Cs(29,65) = nc66;
Cs(29,66) = nc53;
Cs(29,70) = nc47;
Cs(29,79) = 1;
Cs(30,2) = nc82;
Cs(30,3) = nc78;
Cs(30,8) = nc74;
Cs(30,22) = nc70;
Cs(30,46) = nc66;
Cs(30,47) = nc53;
Cs(30,52) = nc47;
Cs(30,66) = 1;
Cs(31,8) = nc82;
Cs(31,9) = nc78;
Cs(31,13) = nc74;
Cs(31,27) = nc70;
Cs(31,52) = nc66;
Cs(31,53) = nc53;
Cs(31,57) = nc47;
Cs(31,71) = 1;
Cs(32,12) = nc82;
Cs(32,13) = nc78;
Cs(32,16) = nc74;
Cs(32,30) = nc70;
Cs(32,56) = nc66;
Cs(32,57) = nc53;
Cs(32,60) = nc47;
Cs(32,74) = 1;
Cs(33,22) = nc82;
Cs(33,23) = nc78;
Cs(33,27) = nc74;
Cs(33,36) = nc70;
Cs(33,66) = nc66;
Cs(33,67) = nc53;
Cs(33,71) = nc47;
Cs(33,80) = 1;
Cs(34,26) = nc82;
Cs(34,27) = nc78;
Cs(34,30) = nc74;
Cs(34,38) = nc70;
Cs(34,70) = nc66;
Cs(34,71) = nc53;
Cs(34,74) = nc47;
Cs(34,82) = 1;
Cs(35,35) = nc82;
Cs(35,36) = nc78;
Cs(35,38) = nc74;
Cs(35,41) = nc70;
Cs(35,79) = nc66;
Cs(35,80) = nc53;
Cs(35,82) = nc47;
Cs(35,85) = 1;
Cs(36,4) = nc82;
Cs(36,5) = nc78;
Cs(36,10) = nc74;
Cs(36,24) = nc70;
Cs(36,48) = nc66;
Cs(36,49) = nc53;
Cs(36,54) = nc47;
Cs(36,68) = 1;
Cs(37,13) = nc82;
Cs(37,14) = nc78;
Cs(37,17) = nc74;
Cs(37,31) = nc70;
Cs(37,57) = nc66;
Cs(37,58) = nc53;
Cs(37,61) = nc47;
Cs(37,75) = 1;
Cs(38,16) = nc82;
Cs(38,17) = nc78;
Cs(38,19) = nc74;
Cs(38,33) = nc70;
Cs(38,60) = nc66;
Cs(38,61) = nc53;
Cs(38,63) = nc47;
Cs(38,77) = 1;
Cs(39,30) = nc82;
Cs(39,31) = nc78;
Cs(39,33) = nc74;
Cs(39,40) = nc70;
Cs(39,74) = nc66;
Cs(39,75) = nc53;
Cs(39,77) = nc47;
Cs(39,84) = 1;
Cs(40,38) = nc82;
Cs(40,39) = nc78;
Cs(40,40) = nc74;
Cs(40,43) = nc70;
Cs(40,82) = nc66;
Cs(40,83) = nc53;
Cs(40,84) = nc47;
Cs(40,87) = 1;
Cs(41,5) = nc82;
Cs(41,6) = nc78;
Cs(41,11) = nc74;
Cs(41,25) = nc70;
Cs(41,49) = nc66;
Cs(41,50) = nc53;
Cs(41,55) = nc47;
Cs(41,69) = 1;
Cs(42,10) = nc82;
Cs(42,11) = nc78;
Cs(42,15) = nc74;
Cs(42,29) = nc70;
Cs(42,54) = nc66;
Cs(42,55) = nc53;
Cs(42,59) = nc47;
Cs(42,73) = 1;
Cs(43,14) = nc82;
Cs(43,15) = nc78;
Cs(43,18) = nc74;
Cs(43,32) = nc70;
Cs(43,58) = nc66;
Cs(43,59) = nc53;
Cs(43,62) = nc47;
Cs(43,76) = 1;
Cs(44,17) = nc82;
Cs(44,18) = nc78;
Cs(44,20) = nc74;
Cs(44,34) = nc70;
Cs(44,61) = nc66;
Cs(44,62) = nc53;
Cs(44,64) = nc47;
Cs(44,78) = 1;
Cs(45,45) = 1;
Cs(45,123) = -1;
Cs(46,46) = 1;
Cs(46,124) = -1;
Cs(47,47) = 1;
Cs(47,125) = -1;
Cs(48,48) = 1;
Cs(48,126) = -1;
Cs(49,49) = 1;
Cs(49,127) = -1;
Cs(50,50) = 1;
Cs(50,128) = -1;
Cs(51,51) = 1;
Cs(51,129) = -1;
Cs(52,52) = 1;
Cs(52,130) = -1;
Cs(53,53) = 1;
Cs(53,131) = -1;
Cs(54,54) = 1;
Cs(54,132) = -1;
Cs(55,55) = 1;
Cs(55,133) = -1;
Cs(56,56) = 1;
Cs(56,134) = -1;
Cs(57,57) = 1;
Cs(57,135) = -1;
Cs(58,58) = 1;
Cs(58,136) = -1;
Cs(59,59) = 1;
Cs(59,137) = -1;
Cs(60,60) = 1;
Cs(60,138) = -1;
Cs(61,61) = 1;
Cs(61,139) = -1;
Cs(62,62) = 1;
Cs(62,140) = -1;
Cs(63,63) = 1;
Cs(63,141) = -1;
Cs(64,64) = 1;
Cs(64,142) = -1;
Cs(65,65) = 1;
Cs(65,143) = -1;
Cs(66,66) = 1;
Cs(66,144) = -1;
Cs(67,67) = 1;
Cs(67,145) = -1;
Cs(68,68) = 1;
Cs(68,146) = -1;
Cs(69,69) = 1;
Cs(69,147) = -1;
Cs(70,70) = 1;
Cs(70,148) = -1;
Cs(71,71) = 1;
Cs(71,149) = -1;
Cs(72,72) = 1;
Cs(72,150) = -1;
Cs(73,73) = 1;
Cs(73,151) = -1;
Cs(74,74) = 1;
Cs(74,152) = -1;
Cs(75,75) = 1;
Cs(75,153) = -1;
Cs(76,76) = 1;
Cs(76,154) = -1;
Cs(77,77) = 1;
Cs(77,155) = -1;
Cs(78,78) = 1;
Cs(78,156) = -1;
Cs(79,79) = 1;
Cs(79,157) = -1;
Cs(80,80) = 1;
Cs(80,158) = -1;
Cs(81,81) = 1;
Cs(81,159) = -1;
Cs(82,82) = 1;
Cs(82,160) = -1;
Cs(83,83) = 1;
Cs(83,161) = -1;
Cs(84,84) = 1;
Cs(84,162) = -1;
Cs(85,85) = 1;
Cs(85,163) = -1;
Cs(86,86) = 1;
Cs(86,164) = -1;
Cs(87,87) = 1;
Cs(87,165) = -1;
Cs(88,88) = 1;
Cs(88,166) = -1;
Cs(89,89) = 1;
Cs(89,167) = -1;
Cs(90,90) = 1;
Cs(90,168) = -1;
Cs(91,91) = 1;
Cs(91,169) = -1;
Cs(92,92) = 1;
Cs(92,170) = -1;
Cs(93,93) = 1;
Cs(93,173) = -1;
Cs(94,94) = 1;
Cs(94,174) = -1;
Cs(95,95) = 1;
Cs(95,175) = -1;
Cs(96,96) = 1;
Cs(96,176) = -1;
Cs(97,97) = 1;
Cs(97,178) = -1;
Cs(98,98) = 1;
Cs(98,179) = -1;
Cs(99,99) = 1;
Cs(99,180) = -1;
Cs(100,100) = 1;
Cs(100,182) = -1;
Cs(101,101) = 1;
Cs(101,183) = -1;
Cs(102,102) = 1;
Cs(102,185) = -1;
Cs(103,103) = 1;
Cs(103,187) = -1;
Cs(104,104) = 1;
Cs(104,188) = -1;
Cs(105,105) = 1;
Cs(105,189) = -1;
Cs(106,106) = 1;
Cs(106,190) = -1;
Cs(107,107) = 1;
Cs(107,192) = -1;
Cs(108,108) = 1;
Cs(108,193) = -1;
Cs(109,109) = 1;
Cs(109,194) = -1;
Cs(110,110) = 1;
Cs(110,196) = -1;
Cs(111,111) = 1;
Cs(111,197) = -1;
Cs(112,112) = 1;
Cs(112,199) = -1;
Cs(113,113) = 1;
Cs(113,201) = -1;
Cs(114,114) = 1;
Cs(114,202) = -1;
Cs(115,115) = 1;
Cs(115,203) = -1;
Cs(116,116) = 1;
Cs(116,204) = -1;
Cs(117,117) = 1;
Cs(117,205) = -1;
Cs(118,118) = 1;
Cs(118,206) = -1;
Cs(119,119) = 1;
Cs(119,207) = -1;
Cs(120,120) = 1;
Cs(120,208) = -1;
Cs(121,121) = 1;
Cs(121,209) = -1;
Cs(122,122) = 1;
Cs(122,210) = -1;
redSize =300 ;
indicesToRemove = [];
indicesToSkip = fliplr(find(sum(transpose(solFromEigenVectors))~=0));
sizeoffinalres =78;
[reducedCs, reducedSparseBasis zeroMatrixIndices rowsToRemove colsToRemove] = reducemonbasis(Cs, transpose(solFromEigenVectors),redSize, 100.0, indicesToSkip);
rowsToRemove = rowsToRemove(1:max(find(rowsToRemove)), :);
colsToRemove = colsToRemove(1:max(find(colsToRemove)), :);
% if(size(rowsToRemove,1) > 0)    
if 1 == 2
    indicesToRemove = [rowsToRemove,colsToRemove];
    
    noOfCoeffMatrices = size(Cs,2)/size(Cs,1);
    
    sizeOfReducedCs = sizeOfC - size(rowsToRemove,1);
    sizeOfM22 = size(rowsToRemove,1);
    numberOfCoeffMs = size(Cs,2)/size(Cs,1);
    maxReducedCoeffMs = 2 * numberOfCoeffMs - 1;
    colsToRemove = colsToRemove + ([1:numberOfCoeffMs] - 1) * sizeOfC;
    colsToRemove = colsToRemove(:);
    
    % Estimating M's
    M11 = Cs;
    M11(rowsToRemove,:) =[];
    M11(:,colsToRemove) =[];
    M22 = Cs(rowsToRemove, colsToRemove);
    M12 = Cs(:,colsToRemove);
    M12(rowsToRemove,:) = [];
    M21 = Cs(rowsToRemove,:);
    M21(:,colsToRemove) = [];
    reducedCs = [M11,zeros(sizeOfReducedCs,sizeOfReducedCs*(maxReducedCoeffMs-numberOfCoeffMs))];
    M22 = M22(1:sizeOfM22, 1:sizeOfM22);
    invM22 = inv(M22);
    indxOfZeroCoeffMat = [];
    for i=1:numberOfCoeffMs
        for j=1:numberOfCoeffMs
            coeffExp = i+j-1;
            temp = reducedCs(:,sizeOfReducedCs*(coeffExp-1) + 1:sizeOfReducedCs*coeffExp);
            tempM12 = M12(:,sizeOfM22*(i-1) + 1:sizeOfM22*i);
            tempM21 = M21(:,sizeOfReducedCs*(j-1) + 1:sizeOfReducedCs*j);
            
            buff = temp - (tempM12*invM22) * tempM21;
            reducedCs(:,sizeOfReducedCs*(coeffExp-1) + 1:sizeOfReducedCs*coeffExp) = buff;
            if( norm(buff,'fro') ~= 0)
                indxOfZeroCoeffMat(coeffExp) = 1;
            else
                indxOfZeroCoeffMat(coeffExp) = 0;
            end
        end
    end
    
    allReducedCs = [];
    for i = 1:maxReducedCoeffMs
        buff = reducedCs(:,sizeOfReducedCs*(i-1) + 1:sizeOfReducedCs*i);
        if(indxOfZeroCoeffMat(i) == 1)
            allReducedCs = [allReducedCs, buff];
            
        end
    end
    numOfRedCoeffMat = max(find(indxOfZeroCoeffMat));
    solForm = solFromEigenVectors;
    solForm(indicesToRemove(:,2),:) = [];
    sparseBasis(:,indicesToRemove(:,2)) = [];
    allCss = mat2cell(allReducedCs, sizeOfReducedCs, ones(1,numOfRedCoeffMat) * sizeOfReducedCs);
    
else
    sizeOfReducedCs = sizeOfC;
    numOfRedCoeffMat = size(Cs,2)/size(Cs,1);
    allCss = mat2cell(Cs, sizeOfReducedCs, ones(1,numOfRedCoeffMat ) * sizeOfReducedCs);
    indicesToRemove = [];
end


    if rank(allCss{end}) < rank(allCss{1})
        allCss = fliplr(allCss);
    end

    A = []; B = [];
    for i = 1:numOfRedCoeffMat -2
        tempA = []; tempB = [];
        for j = 1:numOfRedCoeffMat - 1
            if j == i + 1
                tempA = [tempA eye(sizeOfReducedCs)];
            else
                tempA = [tempA zeros(sizeOfReducedCs)];
            end
            if j == i
                tempB = [tempB eye(sizeOfReducedCs)];
            else
                tempB = [tempB zeros(sizeOfReducedCs)];
            end
        end
        A = [A;tempA];        
        B = [B;tempB];
    end
    
    tempA = []; tempB = [];
    for j = 1:numOfRedCoeffMat - 1
        tempA = [tempA -allCss{j}];
        if j == numOfRedCoeffMat -1
            tempB = [tempB allCss{j+1}];
        else
            tempB = [tempB zeros(sizeOfReducedCs)];
        end
    end
    A = [A; tempA]; 
    B = [B; tempB]; 



    extendedbasis = [sparseBasis; zeros(1,sizeOfReducedCs)];
    for i = 1:numOfRedCoeffMat-2
        extendedbasis = [extendedbasis, [sparseBasis;ones(1,sizeOfReducedCs)*i]];
    end


%% Removal of 0 eigen values via row algebra operations.
thresh = 1e-10;
perms = [];
zeigvalindx=[];
colpermutation = [];
rowpermutation = [];

% remove_0_eigvalues;
% remove_more_0_eigvalues;


    %% Generation of the template to extract solutions to individual 
    % unhidden variables from the eigen vector which will be a vector 
    % of monomials, which is an extension of the sparse bases.        
    sizeoffinalres = min(sizeoffinalres, size(extendedbasis,2));
    disp(size(sizeoffinalres));
    tempextendedbasis = extendedbasis(:,end-sizeoffinalres+1:end);    

    remove_more_0_eigvalues_by_deflation;
    pairs = transpose(combnk(setdiff(1:size(tempextendedbasis,2), rowstorem),2));
    ops = eye(size(tempextendedbasis,1));
    solverTemplate = zeros(size(tempextendedbasis));
    for i = 1:size(tempextendedbasis,1) -1
        op = ops(:,i); 
        for pair = pairs
            tmp = tempextendedbasis(:,pair)* [1;-1];
            if norm(abs(tmp) - op) == 0
                solverTemplate(:,pair(1)) = solverTemplate(:,pair(1)) + sum(tmp) * op;
                solverTemplate(:,pair(2)) = solverTemplate(:,pair(2)) -sum(tmp) * op;
                break;
            end
        end        
    end
%     Removoing the extended part of the sparseBasis
    extendedbasis = tempextendedbasis;
    %%
    
    
    solverTemplate(size(extendedbasis,1),:) = [];
    disp(" Parasitic eigenvalues have been removed. And size of final solver is ");
    disp(size(extendedbasis));
end