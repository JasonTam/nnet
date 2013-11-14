
function train = parseTrain(fPath)
% Parses a training file for 
% The number of training examples, N_i, and N_o
% [Feature vector Output]
% Jason Tam
if nargin<1
    fPath = './data/WDBC/wdbc.train';
end

fID = fopen(fPath);
% [N_e N_i N_o]
N = cell2mat(textscan(fID,'%d %d %d',1));
fspec = repmat('%f ',[1 N(2)+1]);
A = cell2mat(textscan(fID,fspec,N(1)));
fclose(fID);

F = A(:,1:end-1); T = A(:,end);
train.N=N; train.features=F; train.targets=T;

end