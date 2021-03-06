function[eqsHandler, cfg] = problem_9pt2radial()
%% Configuring the solver
cfg = retrieve_solver_cfg();
% If the polynomial system is huge, this function can be
% extracted out in a separate file and the file can be loaded here to
% obtain the input polynomial system.s
eqsHandler = @retrieve_eqs;
end
%% The polynomial system of the solver
% The parameters are the variables and the coefficients. The variables have
% to be labelled as 'a1', 'a2', ... and the coefficients are labelled as
% 'c1', 'c2', ... 
function eqs = retrieve_eqs(a1,a2,a3,a4,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,c61,c62,c63,c64,c65,c66,c67,c68,c69,c70,c71,c72) 
eqs(1) = a1*a3*a4*c17 + a1*a3*c49 + a1*a4*c20 + a1*c52 + a2*a3*a4*c18 + a2*a3*c50 + a2*a4*c21 + a2*c53 + a3*a4^2*c19 + a3*a4*c22 + a3*a4*c51 + a3*c54 + a4^2*c23 + a4*c24 + a4*c55 + c56;
eqs(2) = a1*a3*a4*c41 + a1*a3*c57 + a1*a4*c44 + a1*c60 + a2*a3*a4*c42 + a2*a3*c58 + a2*a4*c45 + a2*c61 + a3*a4^2*c43 + a3*a4*c46 + a3*a4*c59 + a3*c62 + a4^2*c47 + a4*c48 + a4*c63 + c64;
eqs(3) = a1*a3*c65 + a1*a3 + a1*c68 + a2*a3*c66 + a2*c69 + a3*a4*c67 + a3*c70 + a4*c71 + c72;
eqs(4) = a1^3*a3^2*c9*c41 - a1^3*a3^2*c17*c33 + a1^3*a3*c9*c44 + a1^3*a3*c12*c41 - a1^3*a3*c17*c36 - a1^3*a3*c20*c33 + a1^3*c12*c44 - a1^3*c20*c36 - a1^2*a2*a3^2*c1*c41 + a1^2*a2*a3^2*c9*c42 + a1^2*a2*a3^2*c10*c41 + a1^2*a2*a3^2*c17*c25 - a1^2*a2*a3^2*c17*c34 - a1^2*a2*a3^2*c18*c33 - a1^2*a2*a3*c1*c44 - a1^2*a2*a3*c4*c41 + a1^2*a2*a3*c9*c45 + a1^2*a2*a3*c10*c44 + a1^2*a2*a3*c12*c42 + a1^2*a2*a3*c13*c41 + a1^2*a2*a3*c17*c28 - a1^2*a2*a3*c17*c37 - a1^2*a2*a3*c18*c36 + a1^2*a2*a3*c20*c25 - a1^2*a2*a3*c20*c34 - a1^2*a2*a3*c21*c33 - a1^2*a2*c4*c44 + a1^2*a2*c12*c45 + a1^2*a2*c13*c44 + a1^2*a2*c20*c28 - a1^2*a2*c20*c37 - a1^2*a2*c21*c36 + a1^2*a3^2*a4*c9*c43 + a1^2*a3^2*a4*c11*c41 - a1^2*a3^2*a4*c17*c35 - a1^2*a3^2*a4*c19*c33 + a1^2*a3^2*c1*c33 - a1^2*a3^2*c9*c25 + a1^2*a3^2*c9*c46 + a1^2*a3^2*c14*c41 - a1^2*a3^2*c17*c38 - a1^2*a3^2*c22*c33 + a1^2*a3*a4*c9*c47 + a1^2*a3*a4*c11*c44 + a1^2*a3*a4*c12*c43 + a1^2*a3*a4*c15*c41 - a1^2*a3*a4*c17*c39 - a1^2*a3*a4*c19*c36 - a1^2*a3*a4*c20*c35 - a1^2*a3*a4*c23*c33 + a1^2*a3*c1*c36 + a1^2*a3*c4*c33 - a1^2*a3*c9*c28 + a1^2*a3*c9*c48 - a1^2*a3*c12*c25 + a1^2*a3*c12*c46 + a1^2*a3*c14*c44 + a1^2*a3*c16*c41 - a1^2*a3*c17*c40 - a1^2*a3*c20*c38 - a1^2*a3*c22*c36 - a1^2*a3*c24*c33 + a1^2*a4*c12*c47 + a1^2*a4*c15*c44 - a1^2*a4*c20*c39 - a1^2*a4*c23*c36 + a1^2*c4*c36 - a1^2*c12*c28 + a1^2*c12*c48 + a1^2*c16*c44 - a1^2*c20*c40 - a1^2*c24*c36 - a1*a2^2*a3^2*c1*c42 - a1*a2^2*a3^2*c2*c41 + a1*a2^2*a3^2*c10*c42 + a1*a2^2*a3^2*c17*c26 + a1*a2^2*a3^2*c18*c25 - a1*a2^2*a3^2*c18*c34 - a1*a2^2*a3*c1*c45 - a1*a2^2*a3*c2*c44 - a1*a2^2*a3*c4*c42 - a1*a2^2*a3*c5*c41 + a1*a2^2*a3*c10*c45 + a1*a2^2*a3*c13*c42 + a1*a2^2*a3*c17*c29 + a1*a2^2*a3*c18*c28 - a1*a2^2*a3*c18*c37 + a1*a2^2*a3*c20*c26 + a1*a2^2*a3*c21*c25 - a1*a2^2*a3*c21*c34 - a1*a2^2*c4*c45 - a1*a2^2*c5*c44 + a1*a2^2*c13*c45 + a1*a2^2*c20*c29 + a1*a2^2*c21*c28 - a1*a2^2*c21*c37 - a1*a2*a3^2*a4*c1*c43 - a1*a2*a3^2*a4*c3*c41 + a1*a2*a3^2*a4*c10*c43 + a1*a2*a3^2*a4*c11*c42 + a1*a2*a3^2*a4*c17*c27 - a1*a2*a3^2*a4*c18*c35 + a1*a2*a3^2*a4*c19*c25 - a1*a2*a3^2*a4*c19*c34 + a1*a2*a3^2*c1*c34 - a1*a2*a3^2*c1*c46 + a1*a2*a3^2*c2*c33 - a1*a2*a3^2*c6*c41 - a1*a2*a3^2*c9*c26 - a1*a2*a3^2*c10*c25 + a1*a2*a3^2*c10*c46 + a1*a2*a3^2*c14*c42 + a1*a2*a3^2*c17*c30 - a1*a2*a3^2*c18*c38 + a1*a2*a3^2*c22*c25 - a1*a2*a3^2*c22*c34 - a1*a2*a3*a4*c1*c47 - a1*a2*a3*a4*c3*c44 - a1*a2*a3*a4*c4*c43 - a1*a2*a3*a4*c7*c41 + a1*a2*a3*a4*c10*c47 + a1*a2*a3*a4*c11*c45 + a1*a2*a3*a4*c13*c43 + a1*a2*a3*a4*c15*c42 + a1*a2*a3*a4*c17*c31 - a1*a2*a3*a4*c18*c39 + a1*a2*a3*a4*c19*c28 - a1*a2*a3*a4*c19*c37 + a1*a2*a3*a4*c20*c27 - a1*a2*a3*a4*c21*c35 + a1*a2*a3*a4*c23*c25 - a1*a2*a3*a4*c23*c34 + a1*a2*a3*c1*c37 - a1*a2*a3*c1*c48 + a1*a2*a3*c2*c36 + a1*a2*a3*c4*c34 - a1*a2*a3*c4*c46 + a1*a2*a3*c5*c33 - a1*a2*a3*c6*c44 - a1*a2*a3*c8*c41 - a1*a2*a3*c9*c29 - a1*a2*a3*c10*c28 + a1*a2*a3*c10*c48 - a1*a2*a3*c12*c26 - a1*a2*a3*c13*c25 + a1*a2*a3*c13*c46 + a1*a2*a3*c14*c45 + a1*a2*a3*c16*c42 + a1*a2*a3*c17*c32 - a1*a2*a3*c18*c40 + a1*a2*a3*c20*c30 - a1*a2*a3*c21*c38 + a1*a2*a3*c22*c28 - a1*a2*a3*c22*c37 + a1*a2*a3*c24*c25 - a1*a2*a3*c24*c34 - a1*a2*a4*c4*c47 - a1*a2*a4*c7*c44 + a1*a2*a4*c13*c47 + a1*a2*a4*c15*c45 + a1*a2*a4*c20*c31 - a1*a2*a4*c21*c39 + a1*a2*a4*c23*c28 - a1*a2*a4*c23*c37 + a1*a2*c4*c37 - a1*a2*c4*c48 + a1*a2*c5*c36 - a1*a2*c8*c44 - a1*a2*c12*c29 - a1*a2*c13*c28 + a1*a2*c13*c48 + a1*a2*c16*c45 + a1*a2*c20*c32 - a1*a2*c21*c40 + a1*a2*c24*c28 - a1*a2*c24*c37 + a1*a3^2*a4^2*c11*c43 - a1*a3^2*a4^2*c19*c35 + a1*a3^2*a4*c1*c35 + a1*a3^2*a4*c3*c33 - a1*a3^2*a4*c9*c27 - a1*a3^2*a4*c11*c25 + a1*a3^2*a4*c11*c46 + a1*a3^2*a4*c14*c43 - a1*a3^2*a4*c19*c38 - a1*a3^2*a4*c22*c35 + a1*a3^2*c1*c38 + a1*a3^2*c6*c33 - a1*a3^2*c9*c30 - a1*a3^2*c14*c25 + a1*a3^2*c14*c46 - a1*a3^2*c22*c38 + a1*a3*a4^2*c11*c47 + a1*a3*a4^2*c15*c43 - a1*a3*a4^2*c19*c39 - a1*a3*a4^2*c23*c35 + a1*a3*a4*c1*c39 + a1*a3*a4*c3*c36 + a1*a3*a4*c4*c35 + a1*a3*a4*c7*c33 - a1*a3*a4*c9*c31 - a1*a3*a4*c11*c28 + a1*a3*a4*c11*c48 - a1*a3*a4*c12*c27 + a1*a3*a4*c14*c47 - a1*a3*a4*c15*c25 + a1*a3*a4*c15*c46 + a1*a3*a4*c16*c43 - a1*a3*a4*c19*c40 - a1*a3*a4*c22*c39 - a1*a3*a4*c23*c38 - a1*a3*a4*c24*c35 + a1*a3*c1*c40 + a1*a3*c4*c38 + a1*a3*c6*c36 + a1*a3*c8*c33 - a1*a3*c9*c32 - a1*a3*c12*c30 - a1*a3*c14*c28 + a1*a3*c14*c48 - a1*a3*c16*c25 + a1*a3*c16*c46 - a1*a3*c22*c40 - a1*a3*c24*c38 + a1*a4^2*c15*c47 - a1*a4^2*c23*c39 + a1*a4*c4*c39 + a1*a4*c7*c36 - a1*a4*c12*c31 - a1*a4*c15*c28 + a1*a4*c15*c48 + a1*a4*c16*c47 - a1*a4*c23*c40 - a1*a4*c24*c39 + a1*c4*c40 + a1*c8*c36 - a1*c12*c32 - a1*c16*c28 + a1*c16*c48 - a1*c24*c40 - a2^3*a3^2*c2*c42 + a2^3*a3^2*c18*c26 - a2^3*a3*c2*c45 - a2^3*a3*c5*c42 + a2^3*a3*c18*c29 + a2^3*a3*c21*c26 - a2^3*c5*c45 + a2^3*c21*c29 - a2^2*a3^2*a4*c2*c43 - a2^2*a3^2*a4*c3*c42 + a2^2*a3^2*a4*c18*c27 + a2^2*a3^2*a4*c19*c26 + a2^2*a3^2*c2*c34 - a2^2*a3^2*c2*c46 - a2^2*a3^2*c6*c42 - a2^2*a3^2*c10*c26 + a2^2*a3^2*c18*c30 + a2^2*a3^2*c22*c26 - a2^2*a3*a4*c2*c47 - a2^2*a3*a4*c3*c45 - a2^2*a3*a4*c5*c43 - a2^2*a3*a4*c7*c42 + a2^2*a3*a4*c18*c31 + a2^2*a3*a4*c19*c29 + a2^2*a3*a4*c21*c27 + a2^2*a3*a4*c23*c26 + a2^2*a3*c2*c37 - a2^2*a3*c2*c48 + a2^2*a3*c5*c34 - a2^2*a3*c5*c46 - a2^2*a3*c6*c45 - a2^2*a3*c8*c42 - a2^2*a3*c10*c29 - a2^2*a3*c13*c26 + a2^2*a3*c18*c32 + a2^2*a3*c21*c30 + a2^2*a3*c22*c29 + a2^2*a3*c24*c26 - a2^2*a4*c5*c47 - a2^2*a4*c7*c45 + a2^2*a4*c21*c31 + a2^2*a4*c23*c29 + a2^2*c5*c37 - a2^2*c5*c48 - a2^2*c8*c45 - a2^2*c13*c29 + a2^2*c21*c32 + a2^2*c24*c29 - a2*a3^2*a4^2*c3*c43 + a2*a3^2*a4^2*c19*c27 + a2*a3^2*a4*c2*c35 + a2*a3^2*a4*c3*c34 - a2*a3^2*a4*c3*c46 - a2*a3^2*a4*c6*c43 - a2*a3^2*a4*c10*c27 - a2*a3^2*a4*c11*c26 + a2*a3^2*a4*c19*c30 + a2*a3^2*a4*c22*c27 + a2*a3^2*c2*c38 + a2*a3^2*c6*c34 - a2*a3^2*c6*c46 - a2*a3^2*c10*c30 - a2*a3^2*c14*c26 + a2*a3^2*c22*c30 - a2*a3*a4^2*c3*c47 - a2*a3*a4^2*c7*c43 + a2*a3*a4^2*c19*c31 + a2*a3*a4^2*c23*c27 + a2*a3*a4*c2*c39 + a2*a3*a4*c3*c37 - a2*a3*a4*c3*c48 + a2*a3*a4*c5*c35 - a2*a3*a4*c6*c47 + a2*a3*a4*c7*c34 - a2*a3*a4*c7*c46 - a2*a3*a4*c8*c43 - a2*a3*a4*c10*c31 - a2*a3*a4*c11*c29 - a2*a3*a4*c13*c27 - a2*a3*a4*c15*c26 + a2*a3*a4*c19*c32 + a2*a3*a4*c22*c31 + a2*a3*a4*c23*c30 + a2*a3*a4*c24*c27 + a2*a3*c2*c40 + a2*a3*c5*c38 + a2*a3*c6*c37 - a2*a3*c6*c48 + a2*a3*c8*c34 - a2*a3*c8*c46 - a2*a3*c10*c32 - a2*a3*c13*c30 - a2*a3*c14*c29 - a2*a3*c16*c26 + a2*a3*c22*c32 + a2*a3*c24*c30 - a2*a4^2*c7*c47 + a2*a4^2*c23*c31 + a2*a4*c5*c39 + a2*a4*c7*c37 - a2*a4*c7*c48 - a2*a4*c8*c47 - a2*a4*c13*c31 - a2*a4*c15*c29 + a2*a4*c23*c32 + a2*a4*c24*c31 + a2*c5*c40 + a2*c8*c37 - a2*c8*c48 - a2*c13*c32 - a2*c16*c29 + a2*c24*c32 + a3^2*a4^2*c3*c35 - a3^2*a4^2*c11*c27 + a3^2*a4*c3*c38 + a3^2*a4*c6*c35 - a3^2*a4*c11*c30 - a3^2*a4*c14*c27 + a3^2*c6*c38 - a3^2*c14*c30 + a3*a4^2*c3*c39 + a3*a4^2*c7*c35 - a3*a4^2*c11*c31 - a3*a4^2*c15*c27 + a3*a4*c3*c40 + a3*a4*c6*c39 + a3*a4*c7*c38 + a3*a4*c8*c35 - a3*a4*c11*c32 - a3*a4*c14*c31 - a3*a4*c15*c30 - a3*a4*c16*c27 + a3*c6*c40 + a3*c8*c38 - a3*c14*c32 - a3*c16*c30 + a4^2*c7*c39 - a4^2*c15*c31 + a4*c7*c40 + a4*c8*c39 - a4*c15*c32 - a4*c16*c31 + c8*c40 - c16*c32;
end

%% The polynomial system
function cfg = retrieve_solver_cfg()
cfg = {};

% Number of coefficients, labelled as c1, c2, c3,...
cfg.numOfCoeff = 72;

% Number of variables, labeled as a1, a2, a3,...
cfg.numOfVars = 4;

% The index i of the selected variable, ai in the extra polynomial,
% ai - lambda.
% If set to -1, all variables will be tested one
% by one
cfg.hiddenVarNum = 3;

% (1) Either the size of polynomial combinations to be tested.
cfg.sizeOfCombs = [];
% (2) Or the specific polynomial combination to be tested.
cfg.polyComb=[1;2;3];
% (3) Or if both are given, the polycomb takes precedence over sizeofcombs.

% The number of rows to be GJ eliminated to obtained a reduced input
% polynomial system as an input to the generator.
cfg.noOfRowsToReduce = 0;

% The heuristic size of the template. There is no theoretical backing, to the best of our
% knowledge, governing the smallest template that can be generated.
% Hence one can start with a larger size and try to test by reducing the size
% of the template.
cfg.heurisiticTemplatesize = 117;
end