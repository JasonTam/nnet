function [ NN ] = backPropLearn( init, train,...
    n_epochs, alpha )
%BACKPROPLEARN Summary of this function goes here
%   Back propagation learning
%   init = initial struct
%   train = train struct
%   alpha = learning rate

W = init.W;
L = numel(W)+1;   % Should be 3 for 1 hidden layer
b = -1;     % dat bias

% Activation Function
g = @(x) 1./(1+exp(-x));
g_p = @(x) g(x).*(1-g(x));

% Initialize weights
% (Skipping this because W is already initialized)

for epoch = 1:n_epochs
    disp(epoch);
   for e = 1:train.n(1) % for each training example
       a{1} = train.features(e,:)';     % Input Features
       for l = 2:L        
           in{l} = W{l-1}*[b; a{l-1}];
           a{l} = g(in{l});
       end
       
% Propagate deltas backward from output later to input later
% in should be the last input
        y = train.targets(e); % Target for this example
        delta{L} = g_p(in{L}).*(y-a{end});

        for l = L-1:-1:2
            % (2:end) because first weight is bias weight
            delta{l} = g_p(in{l}).*(W{l}(2:end)*delta{l+1})';
        end
        
        % Update every weight in network using deltas
        for l = 1:L-1
            W{l}(:,2:end) = W{l}(:,2:end) + ...
                alpha.*delta{l+1}*a{l}';
        end
        
   end
    
end

NN.n = init.n;
NN.W = W;

end












