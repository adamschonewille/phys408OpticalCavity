function newTime = correctTimeSeries(Time,timestep,threshold)
% Corrects a tie series that for some reason was not linearly increasing
% when read using DAQ
newTime = zeros(length(Time),1);
for i=1:length(Time)-1
    deltaTime=Time(i)-Time(i+1);
    if ( abs(deltaTime-timestep) < threshold )
        newTime(i) = Time(i);
    else
        newTime(i) = Time(i-1)+timestep;
    end
end
newTime(end) = newTime(end-1)+timestep;
