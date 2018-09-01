function [LeftIdx, RightIdx ] = SelectPoints(Time )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

[x,y] = ginput(2);
LeftIdx  = find(abs(Time-x(1)) <5); %returns index of time for left click
RightIdx = find(abs(Time-x(2)) <5);


end

