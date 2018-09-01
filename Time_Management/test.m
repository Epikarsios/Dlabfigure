%VQM Pressure Viewer%


VQM = VQM_Serial_Create();

fopen(VQM);


Data.Pressure = Get_Total_Pressure(VQM);
[Data.Time_Stamp, Data.Epoch_Time] = Get_Date_Time();
% h = animatedline;
figure
subplot(2,1,1)
h = plot(Data.Epoch_Time, Data.Pressure)
grid on
datacursormode on
xlabel('Time')
ylabel('Pressure')
subplot(2,1,2)
j = semilogy(Data.Epoch_Time, Data.Pressure)
   grid on
   datacursormode on
for idx = 1:2500
    h.XDataSource = 'Data.Epoch_Time';
    h.YDataSource = 'Data.Pressure' ;
    j.XDataSource = 'Data.Epoch_Time';
    j.YDataSource = 'Data.Pressure' ;
    Data.Pressure =[Data.Pressure,Get_Total_Pressure(VQM)]; 
    [Temp_Time_Stamp, Temp_Epoch_Time] = Get_Date_Time();
    Data.Time_Stamp = [Data.Time_Stamp, Temp_Time_Stamp];
    Data.Epoch_Time = [Data.Epoch_Time, Temp_Epoch_Time]
 %   addpoints(h,Data.Epoch_Time, Data.Pressure);
  %  drawnow
   refreshdata(h)
   refreshdata(j)
  pause(1);
end


fclose(VQM);
delete(VQM);
clear VQM;