function [ file,path ] = getCSVFilePath( )
%UNTITLED2 Summary of this function goes here
%   Function takes no argumnets, Opens dialog box for user to select file
    
type = '../*.csv';    % selects type to be comma seperated values file 
[file,path] = uigetfile(type);
addpath(path);
end

