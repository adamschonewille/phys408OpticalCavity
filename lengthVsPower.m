cavityLength = [16.34 16.00 15.09 15.03 14.50 14.00 13.50 13.00 12.50 ...
    12.00 11.50 11.00 10.50 10.00 9.50 9.00 8.50 8.00 7.50 7.00 6.50 ...
    6.00 5.50 5.00]; 

power = [210 210 208 203 200 197 189 186 184 179 174 166 156 149 128 ...
    115 90 58 45 41 40 38 37 36];

powerError = [10 10 20 20 20 10 10 10 10 10 10 10 10 10 10 10 10 5 5 5 5 5 2 2];
lengthError = 0.01*ones(length(cavityLength),1);

plot(cavityLength, power, 'o-')
hold on 

e  = errorbar(cavityLength, power, powerError/2, powerError/2, lengthError/2, lengthError/2, 'r.');
e.LineWidth = 1.5;

ax = gca;
ax.FontSize = 18;
ax.XColor = 'k';
ax.YColor = 'k';

ax.YLabel.String = ('Power (mW)');
ax.YLabel.FontSize = 16;
ax.YLabel.FontWeight = 'bold';
ax.YLabel.Color = 'k';

ax.XLabel.String = ('Change in Cavity Length (mm)');
ax.XLabel.FontSize = 16;
ax.XLabel.FontWeight = 'bold';
ax.XLabel.Color = 'k';
ax.XLim = [4, 17];

ax.Box = 'off';
ax.LineWidth = 1.5;
ax.YGrid = 'on';
ax.XMinorTick = 'on';
ax.YMinorTick = 'on';

t = title('Power vs. Cavity Length, at end of 30cm Stability Reigon');
t.Color = 'k';
t.Interpreter = 'LaTeX';
t.FontSize = 24;