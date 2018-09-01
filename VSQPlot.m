


Data =getCSVData();     %Function calls UI for csv file and imports data

[Pressure, Time ,TimeDate, StartofExp, EndofExp ] = ParseData(Data);




message = 'Select two points for fitting to curve.';
msgbox(message);

pause(2);



semilogy(Time, Pressure, '-*b')
title('Pressure vs Time');
xlabel({'Time', '(in Seconds)'});
ylabel({'Pressure', '(in Torr)'})
grid on;
datacursormode on




[left, right] = SelectPoints(Time);
Peak = Pressure(left:right);
avePeak = mean(Peak);
hold on;
%mid = right - left /2;
avePeak =num2str(avePeak);
%text(Time(left),Pressure(left),{avePeak, 'Pressure'})

pause(10);



[x,y]=ginput(2);

scaleXLeft  = find(abs(Time-x(1)) <5); %returns index of time for left click
scaleXRight = find(abs(Time-x(2)) <5);
X1 = Time(scaleXLeft(1));
X2 = Time(scaleXRight(1));

FocusedTime     = Time(scaleXLeft:scaleXRight);
FocusedPressure = Pressure(scaleXLeft:scaleXRight);

figure
subplot(3,1,1)

semilogy(FocusedTime,FocusedPressure, '-*r')
grid on
xlim([X1 X2]);
f =fit(FocusedTime,FocusedPressure, 'exp1');
subplot(3,1,2)
plot(f, FocusedTime, FocusedPressure)
xlim([X1 X2]);
grid on
title('Fitted exponential')
xlabel('Time');
ylabel('Pressure');
f

[d1, d2] = differentiate(f,FocusedTime);



subplot(3,1,3)

semilogy(FocusedTime,d1,'-*b')
xlim([X1 X2]);
grid on