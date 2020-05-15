function[vars, hiddenvarnum, coeffconsts, sizeofcombs, polycomb, infinitePrec, eqs, actualsolno, noofrowstoreduce,heurisitictemplatesize ] = problem_relpose_6p_onefocal(data)
tic;
%% Formatting the  structures -- coefficients and data
numOfDataCoeff = 27;

if nargin == 1
    if data == -1
        data = randn(1,numOfDataCoeff);
        for k = 1:3
            syms(strjoin({'a',num2str(k)},''));
            eval(strjoin({'xx(',num2str(k),') = ', 'a',num2str(k),';'},''));
        end
    else
        xx(1) = data(1);
        xx(2) = data(2);
        xx(3) = data(3);
        data = data(4:end);
    end
else
    for k = 1:numOfDataCoeff
        syms(strjoin({'c',num2str(k)},''));
        eval(strjoin({'data(',num2str(k),') = ', 'c',num2str(k),';'},''));
    end
    
    
    for k = 1:3
        syms(strjoin({'a',num2str(k)},''));
        eval(strjoin({'xx(',num2str(k),') = ', 'a',num2str(k),';'},''));
    end
end

data = transpose(data);

%% Formatting the data structure

B = transpose([transpose(xx);data]);
p = mat2cell(B,1,ones(1,numel(B)));
if nargout >=7
    eqs = Eqs_problem_relpose_6p_onefocal(p{:});
else
    eqs = [];
end
vars = transpose(xx);
if nargout >= 8
    actualsolno = 9;
end
coeffconsts = transpose(data);
hiddenvarnum = 1;
infinitePrec = 2;
sizeofcombs = [1];
polycomb=[9];
noofrowstoreduce = 0;
heurisitictemplatesize = 20000;
end