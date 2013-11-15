% Jason Tam

nnPath = './lol.txt';
testPath = './data/WDBC/wdbc.test';

NN = parseNN(nnPath);
test = parseFeatures(testPath);

results = fwdProp(test,NN);

% Performance Metrics
order = [1;0];
conf = confusionmat(results,test.targets,'order',order);

acc = sum(diag(conf))/(sum(conf(:)));
prec = diag(conf)./sum(conf,2);
recall = diag(conf)./sum(conf,1)';
F1 = (2*prec.*recall)./(prec+recall);




% 
% writeResultstoFile('./lol.txt',NN);
% 

