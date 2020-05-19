function[] = generate_solver(problemName)
%%
folderName = "solvers/"+problemName;
try
    rmdir(folderName, 's');
catch
    'No folder exists. Creating new one for now'
end
mkdir(folderName);
solverGenFunc = str2func(problemName);
addpath("eqs"); addpath("problems");
[xx, hiddenvarnum, data, sizeofcombs, polycomb, ~, eqs, theoreticalsolncnt, noofrowstoreduce, heurisitictemplatesize] = solverGenFunc();
acthiddenvarnum = hiddenvarnum;
rmpath("problems"); rmpath("eqs"); 

if hiddenvarnum ~= -1
    hiddenvar = strjoin({'a',num2str(hiddenvarnum)},'');
else
    hiddenvarnum = 1;
    hiddenvar = strjoin({'a',num2str(1)},'');
end
xx = [strjoin({'a', num2str(hiddenvarnum)}, ''); xx(find(xx~=hiddenvar))];
numOfDataCoeff = length(data);
eqsstring='';
eqnamestring = [];
for i = 1:length(eqs)
    constraintEq = char((eqs(i)));
    eqnamestring = [eqnamestring ; string(strjoin({'eq',num2str(i)},''))];
    eqString = strjoin({' eq',num2str(i), ' := '},'');
    eqsstring = strjoin({eqsstring, eqString, constraintEq, ':'},'');
end

%% Writing the equations to the Eqs txt file for Maple script to haul up and process.
eqFile = fopen(strcat(folderName, '/Eqs.txt'),'w');
fprintf(eqFile ,'%s\n',eqsstring);
fprintf(eqFile, '%s\n', 'eqs := [',join(eqnamestring,','),']:');
try    
    fprintf(eqFile ,'%s\n',strjoin({'vars := [',strjoin(arrayfun(@char, transpose(xx), 'uniform', 0),','), ']:' }, ''));
catch
    fprintf(eqFile ,'%s\n',strjoin({'vars := ',strrep(sym2str(xx), ';', ','), ':' }, ''));
end
fprintf(eqFile ,'%s\n',strjoin({'hiddenVarNumber := ',num2str(acthiddenvarnum),':'}));
fprintf(eqFile ,'%s\n',strjoin({'noofrowstoreduce := ',num2str(noofrowstoreduce),':'}));
if acthiddenvarnum ~= -1
    
try
        fprintf(eqFile ,'%s\n',strjoin({'unHiddenVars := [',strjoin(arrayfun(@char, transpose(xx(find(xx~=hiddenvar))), 'uniform', 0),','),']:'},''));
catch
        fprintf(eqFile ,'%s\n',strjoin({'unHiddenVars := ',strrep(sym2str(xx(find(xx~=hiddenvar))), ';', ','), ':'},''));
end

    
end
fclose(eqFile);
disp("Printed the equations to a txt file ");
%%
% Executing the maple code through a dos command. 
% We specify the folder name to be used, as that folder will house
% all of the data files that we will need.
% The needed data files include 1. the file containing matlab coefficient
% matrices for the polynomials to be solved. 2. a .txt file that houses all
% of the symbolic equations to be solved. 
baseMapleFile = fopen('MapleSparseBasisGeneratorTemplate2.txt','r');
filetext = fileread('MapleSparseBasisGeneratorTemplate2.txt');
fclose(baseMapleFile);

mapleFile = fopen(strcat(folderName, '/MapleSparseBasisGenerator.txt'),'w');
fprintf(mapleFile, '%s\n', strcat('solverFolderName := ',folderName, ':'));
if length(sizeofcombs) == 1 
    fprintf(mapleFile ,'%s\n',strjoin({'sizeofcombs := [',num2str(sizeofcombs), ']:' }, ''));
else
    fprintf(mapleFile ,'%s\n',strjoin({'sizeofcombs := ',strrep(mat2str(sizeofcombs),';',','), ':' }, ''));
end
    fprintf(mapleFile ,'%s\n',strjoin({'heurisitictemplatesize := ',strrep(mat2str(heurisitictemplatesize),';',','), ':' }, ''));
fprintf(mapleFile, '%s\n', strcat('noofdatacoeff := ',num2str(numOfDataCoeff), ':'));
fprintf(mapleFile, '%s\n', strcat('varorder := []:'));
fprintf(mapleFile, '%s\n', strcat('theoreticalsolncnt:= ',num2str(theoreticalsolncnt), ':'));

if length(polycomb) == 1 
    fprintf(mapleFile ,'%s\n',strjoin({'polycomb := [',num2str(polycomb), ']:' }, ''));
else
    fprintf(mapleFile ,'%s\n',strjoin({'polycomb := ',strrep(mat2str(polycomb),';',','), ':' }, ''));
end

fprintf(mapleFile, '%s', filetext);
fclose(mapleFile);

if isunix
    mapleExecutor = strjoin({'maple -q ', char(folderName), '/MapleSparseBasisGenerator.txt '}, '');
elseif ispc
    mapleExecutor = strjoin({'cmaple -q ', char(folderName), '/MapleSparseBasisGenerator.txt '}, '');
else
    disp('Platform not supported')
end

dos(mapleExecutor);
end