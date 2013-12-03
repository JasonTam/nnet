function [ randNN ] = randInit( n )
%RANDINIT Initialize a NN with pseudo rand weights (0,1)
%   n: The number of input, hidden, and output nodes
%   n = [n_in n_ hidden n_out]

W = cell(1,numel(n)-1);

for ii = 1:numel(n)-1
   W{ii} = rand([n(ii+1),n(ii)+1]); 
end

randNN.n = n;
randNN.W = W;

end

