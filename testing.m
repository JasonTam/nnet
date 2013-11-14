% Jason Tam

nnPath = './lol.txt';
testPath = './data/WDBC/wdbc.train';

init = parseInit(initPath);
train = parseTrain(trainPath);

n_epochs = 100;
alpha = 0.1;
NN = backPropLearn(init,train,n_epochs,alpha);

writeResultstoFile('./lol.txt',NN);


