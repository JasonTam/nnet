function testNN( nnPath, testPath, outPath )
%TESTNN Summary of this function goes here
%   Detailed explanation goes here

NN = parseNN(nnPath);
test = parseFeatures(testPath);

results = fwdProp(test,NN);

% Performance Metrics
a = @(c) sum(diag(c))/(sum(c(:)));
p = @(c) c(1)./sum(c(1,:));
r = @(c) c(1)./sum(c(:,1));
F1 = @(pr,re) (2*pr.*re)./(pr+re); 
metrics = @(c) [a(c) p(c) r(c) F1(p(c),r(c))];

order = [1;0];
confs = zeros([numel(order) numel(order) size(results,2)]);
m = zeros([size(results,2) 4]);
for ii = 1:size(results,2)
    conf = confusionmat(results(:,ii),test.targets(:,ii),'order',order);
    confs(:,:,ii) = conf;
    m(ii,:) = metrics(conf);
end

micro = metrics(sum(confs,3));
macro = mean(m); macro(:,4) = F1(macro(2),macro(3));

O = cell(2,1);
O{1} = [reshape(permute(confs,[3 2 1]),[size(results,2), 4]) m];
O{2} = [micro; macro];

writeResultstoFile(outPath,O);

end

