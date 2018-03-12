function [freq,fourier] = fastFourierTransform(TimeSeries,DataSignal)
%Fourier Transform
T = (TimeSeries(5)-TimeSeries(4)); %sampling period
Fs = 1/T; % Sampling frequency
L = length(DataSignal); % Length of signal
t = (0:L-1)*T; % Time vector
Y = fft(DataSignal);
temp = abs(Y/L);
fourier = temp(1:floor(L/2+1));
fourier(2:end-1) = 2*fourier(2:end-1);
freq = Fs*(0:(L/2))/L;
end