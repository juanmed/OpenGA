%% Import data from text file.
% Script for importing data from the following text file:
%
%    /home/wilder/Documents/Doctorate/gaaf_cpp.git/GA-LMS/matlab/w_galms.out
%
% It imports the estimated multivector W.
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2016/02/03 19:06:18

%% Initialize variables.
filename = 'w_galms.out';
delimiter = ' ';

%% Format string for each line of text:
%   column2: double (%f)
%	column3: double (%f)
%   column4: double (%f)
%	column5: double (%f)
%   column6: double (%f)
%	column7: double (%f)
%   column8: double (%f)
%	column9: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%*s%f%f%f%f%f%f%f%f%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%*s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'MultipleDelimsAsOne', true,  'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
VarName2 = dataArray{:, 1};
VarName3 = dataArray{:, 2};
VarName4 = dataArray{:, 3};
VarName5 = dataArray{:, 4};
VarName6 = dataArray{:, 5};
VarName7 = dataArray{:, 6};
VarName8 = dataArray{:, 7};
VarName9 = dataArray{:, 8};

W = [VarName2 VarName3 VarName4 VarName5 VarName6 VarName7 VarName8 VarName9]; 

%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;