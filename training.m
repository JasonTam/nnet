% Jason Tam

initPath = './data/WDBC/sample.NNWDBC.init';
trainPath = './data/WDBC/wdbc.train';

init = parseInit(initPath);
train = parseTrain(trainPath);

tic
NN_trained = backPropLearn(init,train,100,0.1);
toc

