close all; clc; clear all;

%% Load data
filename = 'C:\Users\Adam\Documents\My Homework\PHYS 408\phys408OpticalCavity\Raw Data\15cm Cavity\15cmCavityDataWorkspace.mat';
load(filename);
%% Akshivs Code
% figure(1)
% plot(Time_10cmZoomed,Data_10cmZoomed, '.-');
% hold on
% plot(Time_10cmZoomed,Ramp_10cmZoomed);
% plot(Time_10cm,Data_10cm);
% hold off

%% Change files here
TimeFile = Time1_15cm;
DataFile = Data1_15cm;

VoltageP2P = 25.1;
dV = 0.3;
Frequency = 22.14;
dF = 0.01;
%% Adam finding Finesse and Calibrations
[freq,fourier] = fastFourierTransform(TimeFile,DataFile);

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

%% Piezo Calibration
threshold = 1e-4;
timestep = 4e-6;
newTime = correctTimeSeries(TimeFile,timestep,threshold);

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
findpeaks(DataFile,newTime,'MinPeakWidth',2*timestep,'MaxPeakWidth',1,'Annotate','peaks')
hold on
%plot(newTime,Ramp1_15cm)

return
%% Uncertainty Calculations
FTFrequency = 480
dFTF = (520-440)/2 % assume the saem for all
TimePeriod = 1/FTFrequency
dT = dFTF/FTFrequency*TimePeriod
Slope = Frequency
dSlope = 
DeltaVoltage = Slope*TimePeriod
dDV = 

