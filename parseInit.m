function init = parseInit(fPath)
% Parses a initialization file for 
% The number of input, hidden, and output nodes
% Initlial weights for each edge
% Jason Tam
if nargin<1
    fPath = './data/WDBC/sample.NNWDBC.init';
end

fID = fopen(fPath);
% [N_i N_h N_o]
n = cell2mat(textscan(fID,'%d %d %d',1));
fspec_ih = repmat('%f ',[1 n(1)+1]);
W_ih = cell2mat(textscan(fID,fspec_ih,n(2)));
fspec_ho = repmat('%f ',[1 n(2)+1]);
W_ho = cell2mat(textscan(fID,fspec_ho,n(3)));
fclose(fID);

% The neural net is stored as a cell array
% cells correspond to edge weights from one layer to the next
% This NN has 2 cells because it has only 3 layers
NN = cell(1,2);
NN{1} = W_ih; NN{2} = W_ho;

init.n=n; init.NN=NN;

end