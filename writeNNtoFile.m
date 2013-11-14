function [ output_args ] = writeNNtoFile( fPath, NN )
%WRITENNTOFILE Summary of this function goes here
%   Detailed explanation goes here

dlmwrite(fPath,NN.n,'delimiter',' ','precision','%d');
for l = 1:numel(NN.W)
    dlmwrite(fPath,NN.W{l},'delimiter',' ','precision','%.3f','-append');
end

end

