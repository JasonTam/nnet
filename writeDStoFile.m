function [ output_args ] = writeDStoFile...
    (fPath, n,data, targets)
%WRITEDSTOFILE Summary of this function goes here
%   Detailed explanation goes here

dlmwrite(fPath,n,'delimiter',' ','precision','%d');

% Convert Targets to Logical Array
t = zeros(size(data,1), numel(unique(targets)));
inds = sub2ind(size(t), (1:size(data,1))', targets);
t(inds) = 1;

% dlmwrite(fPath,[data t],'delimiter',' ','precision','%.3f','-append');

format = strcat({repmat('%.3f ',[1 size(data,2)])},{repmat('%d ',[1 size(t,2)-1])},{'%d\n'});

fid = fopen(fPath,'a');
fprintf(fid, format{1}, [data t]');
fclose(fid);

end

