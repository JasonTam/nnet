function trainNN( n_epochs, alpha,...
    initPath, trainPath, outPath )
%TRAINNN Summary of this function goes here
%   Detailed explanation goes here

init = parseNN(initPath);
train = parseFeatures(trainPath);
NN = backPropLearn(init,train,n_epochs,alpha);
writeNNtoFile(outPath,NN);

end

