function [  Pressure, Time,TimeDate, StartofExp, EndofExp ] = ParseData(Data)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here




TimeDate = Data.textdata(:,1);
TimeDate(1) = [];
StartofExp = TimeDate(1);
EndofExp   = TimeDate(length(TimeDate));
Pressure = Data.data(:,1);
formatIn = 'mm-dd-yyyy HH:MM:SS';
Time = datenum(TimeDate, formatIn);
Time = Time() - Time(1);
Time = Time() * (24*3600);





end

