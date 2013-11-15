% Jason Tam

% initPath = './data/WDBC/sample.NNWDBC.init';
% trainPath = './data/WDBC/wdbc.train';
initPath = './data/grades/sample.NNGrades.init';
trainPath = './data/grades/grades.train';



init = parseNN(initPath);
train = parseFeatures(trainPath);

n_epochs = 100;
alpha = 0.05;
NN = backPropLearn(init,train,n_epochs,alpha);

writeNNtoFile('./grades.txt',NN);


