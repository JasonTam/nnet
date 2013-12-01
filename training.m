% Jason Tam
% Training script

% initPath = './data/WDBC/sample.NNWDBC.init';
% trainPath = './data/WDBC/wdbc.train';
% outPath = './myOut/trainedNN_WDBC.txt';
% n_epochs = 100; alpha = 0.1;

% initPath = './data/grades/sample.NNGrades.init';
% trainPath = './data/grades/grades.train';
% outPath = './myOut/trainedNN_grades.txt';
% n_epochs = 100; alpha = 0.05;

initPath = './myData/prostate/sample.NNProstate.init';
trainPath = './myData/prostate/prostate.train';
outPath = './myOut/trainedNN_prostate.txt';
n_epochs = 200; alpha = 0.05;

trainNN( n_epochs, alpha, initPath, trainPath, outPath );