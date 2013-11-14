% Jason Tam

initPath = './data/WDBC/sample.NNWDBC.init';
trainPath = './data/WDBC/wdbc.train';

init = parseInit(initPath);
train = parseTrain(trainPath);

n_epochs = 100;
alpha = 0.1;
NN = backPropLearn(init,train,n_epochs,alpha);

writeNNtoFile('./lol.txt',NN);


