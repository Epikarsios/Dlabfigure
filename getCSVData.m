function [ Data] = getCSVData( )
%UNTITLED2 Summary of this function goes here
%   Function takes no argumnets, Opens dialog box for user to select file
    
type = '../*.csv';    % selects type to be comma seperated values file 
[file,path] = uigetfile(type);
addpath(path);

delimiter = ',';                     % Picarro data seperated by whitespace
headerLinesIn = 1;                   % Specify number headers, not exact         

Data = importdata(file, delimiter, headerLinesIn); % Imports data



end

