%% Jason Tam

dsTrainPath = './myData/prostate/prostate.train';
dsTestPath = './myData/prostate/prostate.test';

% Byar Green Prostate Cancer dataset
% Field Descriptors can be found here
% http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/Cprostate.html
% Targets are causes of death
ds = prtDataGenProstate;
% Pre-process data to zero-mean unit-variance
ds_zmuv = prtPreProcZmuv;       % Create a zero-mean unit variance obj                                 % object
ds_zmuv = ds_zmuv.train(ds);    % Compute the mean and variance
ds_zmuv = ds_zmuv.run(ds);   % Normalize the data

%% Stratified Sampling
% ONLY RUN FOR THR FIRST TIME
% Equal Training and Testing
if 0
    p = 0.5;    % percent of data to use as test
    c = cvpartition(ds.targets,'holdout',p);
    data.train = ds_zmuv.data(c.training,:);
    data.test = ds_zmuv.data(c.test,:);
    targets.train = ds_zmuv.targets(c.training,:);
    targets.test = ds_zmuv.targets(c.test,:);
    n_train = [size(targets.train,1) ds.nFeatures ds.nClasses];
    n_test = [size(targets.test,1) ds.nFeatures ds.nClasses];
    writeDStoFile(dsTrainPath, n_train, data.train, targets.train)
    writeDStoFile(dsTestPath, n_test, data.test, targets.test)
end


%%
dsInitPath = './myData/prostate/sample.NNProstate.init';
n_hidden = 50;
n_init = [ds.nFeatures n_hidden ds.nClasses];
init = randInit(n_init);
writeNNtoFile(dsInitPath,init);












