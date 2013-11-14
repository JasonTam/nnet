% Jason Tam

initPath = './data/WDBC/sample.NNWDBC.init';
trainPath = './data/WDBC/wdbc.train';

init = parseInit(initPath);
train = parseTrain(trainPath);

tic
NN = backPropLearn(init,train,1,0.1);
toc

