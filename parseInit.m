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
N = cell2mat(textscan(fID,'%d %d %d',1));
fspec_ih = repmat('%f ',[1 N(1)+1]);
W_ih = cell2mat(textscan(fID,fspec_ih,N(2)));
fspec_ho = repmat('%f ',[1 N(2)+1]);
W_ho = cell2mat(textscan(fID,fspec_ho,N(3)));
fclose(fID);

init.N=N; init.W_ih=W_ih; init.W_ho=W_ho;

end