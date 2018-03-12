close all; clc; clear all;

filename = 'C:\Users\Adam\Documents\My Homework\PHYS 408\phys408OpticalCavity\Raw Data\15cm Cavity\15cmCavityDataWorkspace.mat';
load(filename);
%% Akshivs Code
% figure(1)
% plot(Time_10cmZoomed,Data_10cmZoomed, '.-');
% hold on
% plot(Time_10cmZoomed,Ramp_10cmZoomed);
% plot(Time_10cm,Data_10cm);
% hold off


%% Adam finding Finesse and Calibrations


[freq,fourier] = fastFourierTransform(Time1_15cm,Data1_15cm);

figure(1)
plot(freq,fourier)
hold on

set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');
set(0,'defaulttextInterpreter','latex');

xlabel('Frequency (Hz)')
ylabel('Magnitude of FT (dB)')
title('Magnitude vs. Frequency of the Fourier Transformed Signal')
hold off

return
ax = gca;
ax.FontSize = 18;
ax.XColor = 'k';
ax.YColor = 'k';

ax.YLabel.String = ('Magnitude of FT (dB)');
ax.YLabel.FontSize = 16;
ax.YLabel.FontWeight = 'bold';
ax.YLabel.Color = 'k';

ax.XLabel.String = ('Frequency (Hz)');
ax.XLabel.FontSize = 16;
ax.XLabel.FontWeight = 'bold';
ax.XLabel.Color = 'k';
%ax.XLim = [4, 17];

ax.Box = 'off';
ax.LineWidth = 1.5;
ax.YGrid = 'on';
ax.XMinorTick = 'on';
ax.YMinorTick = 'on';

t = title('Magnitude vs. Frequency of the Fourier Transformed Signal');
t.Color = 'k';
t.Interpreter = 'LaTeX';
t.FontSize = 18;

return
%% Fourier Transform
% T = (Time1_15cm(5)-Time1_15cm(4)); %sampling period
% Fs = 1/T; % Sampling frequency
% L = length(Data1_15cm); % Length of signal
% t = (0:L-1)*T; % Time vector
% Y = fft(Data1_15cm);
% P2 = abs(Y/L);
% P1 = P2(1:floor(L/2+1));
% P1(2:end-1) = 2*P1(2:end-1);
% f = Fs*(0:(L/2))/L;
% 
% bar(f,P1/max(P1),0.1)
%% Piezo Calibration
threshold = 1e-4;
timestep = 4e-6;
newTime1_15cm = correctTimeSeries(Time1_15cm,timestep,threshold);

% newTime_15cm = zeros(length(Time_15cm),1);
% for i=1:length(Time_15cm)-1
%     deltaTime=Time_15cm(i)-Time_15cm(i+1);
%     if ( abs(deltaTime-timestep) < 1e-4)
%         newTime_15cm(i) = Time_15cm(i);
%     else
%         newTime_15cm(i) = Time_15cm(i-1)+timestep
%     end
% end
% newTime_15cm(end)=newTime_15cm(end-1)+timestep

figure(2)
%plot(delta)
%plot(newTime_15cm)
findpeaks(Data1_15cm,newTime1_15cm,'MinPeakWidth',2*timestep,'MaxPeakWidth',1,'Annotate','peaks')
hold on
plot(newTime1_15cm,Ramp1_15cm)

