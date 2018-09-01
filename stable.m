
threshold = .0008;
smoothIdx = [];
for idx =1:length(Pressure) - 50;
    
    if Pressure(idx +50) <= Pressure(idx) + threshold && Pressure(idx +50) >= Pressure(idx) - threshold;
    
        smoothIdx =[smoothIdx, idx];
        
        
    end
    
end