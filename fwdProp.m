function [ obs ] = fwdProp( data, NN )
%FWDPROP Summary of this function goes here


W = NN.W;
L = numel(W)+1;   % Should be 3 for 1 hidden layer
b = -1;     % dat bias

% Activation Function
g = @(x) 1./(1+exp(-x));
g_p = @(x) g(x).*(1-g(x));

% Initialize weights
% (Skipping this because W is already initialized)
a = cell(1,L); in = cell(1,L);
obs = zeros([data.n(1),data.n(end)]);
for e = 1:data.n(1) % for each training example
   a{1} = data.features(e,:)';     % Input Features
   for l = 2:L        
       in{l} = W{l-1}*[b; a{l-1}];
       a{l} = g(in{l});
   end

   obs(e,:) = round(a{end});
   
end


end












