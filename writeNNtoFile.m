function [ output_args ] = writeNNtoFile( fPath, NN )
%WRITENNTOFILE Summary of this function goes here
%   Detailed explanation goes here

fID = fopen('fPath','w');

fprintf(fID,'%d %d %d',NN.n);
fprintf(fID,'%6.2f %12.8f\n',A);
fclose(fID);


end

