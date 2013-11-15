function [ output_args ] = writeResultstoFile( fPath, O )
%writeResultstoFile Summary of this function goes here
%   Detailed explanation goes here

fID = fopen(fPath,'w');

fspec2 = '%.3f %.3f %.3f %.3f\n';
fspec1 = strcat({'%d %d %d %d '},fspec2);

for ii = 1:size(O{1},1)
    fprintf(fID,fspec1{1},O{1}(ii,:));
end

fprintf(fID,fspec2,O{2}(1,:));
fprintf(fID,fspec2,O{2}(2,:));

fclose(fID);

end

