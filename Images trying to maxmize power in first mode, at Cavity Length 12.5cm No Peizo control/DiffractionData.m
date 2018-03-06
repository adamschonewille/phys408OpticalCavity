function [x,y] = DiffractionData(imagefile, savefile_, line, option)
% this function takes an image file and returns a text file that contains
% the intensity data along a user inputted horizontal or vertical 
% scan line. It will also plot the line segnment you have choosen.

% imagefile = name of the image file
% savefile = file name for the saved data. An extension _hor or _ver will 
% be added depending on which type of line cut is takeb
% line = row or column to take the line out
% option = 'hor' or 'ver' to choose to take a horizontal line or vertical
% line segment. 
%
% an example usage would be 

% DiffractionData_v2('wire.jpeg','wire_cut', 250, 'hor')

%This would import the image wire.jpeg and output the intensity as a
%function of pixel position along the y=250 horizontal line to the data
%file wire_cut_hor.txt.

%The image files captured will usually be 480x640 (horizontal x vertical)

image = rgb2gray(imread(imagefile));

if option=='hor'
    savefile_hor = [savefile_,'_hor.txt'];
    output_hor = fopen(savefile_hor,'w');
    if (line >= 0) && (line <= 480)
        for j=1:640
            diffractionarray(1,j)=(j);
            diffractionarray(2,j)=(image(line,j));
        end

        fprintf(output_hor,'\n %i, %i',diffractionarray(1:2,:));
        x = diffractionarray(1,:);
        y = diffractionarray(2,:);
        plot(x,y, 'Linewidth', 2);
        ax = gca;
        ax.FontSize = 18;
        ax.XLabel.String = ('X');
        ax.XLabel.FontSize = 16;
        ax.XLabel.FontWeight = 'bold';
        ax.XLabel.Color = 'k';
        ax.YLabel.String = ('Intensity');
        ax.YLabel.FontSize = 16;
        ax.YLabel.FontWeight = 'bold';
        ax.YLabel.Color = 'k';
        t = title('Intensity vs. X, GH 1,0');
        t.Color = 'k';
        t.FontSize = 24;

    else
        disp('ERROR: line out of range')
    end
end
    
if option=='ver'
    savefile_ver = [savefile_,'_ver.txt'];
    output_ver = fopen(savefile_ver,'w');
    if (line >= 0) && (line <= 640)
        for j=1:480
            diffractionarray(1,j)=(j);
            diffractionarray(2,j)=(image(j,line));
        end

        fprintf(output_ver,'\n %i, %i',diffractionarray(1:2,:));
        x = diffractionarray(1,:);
        y = diffractionarray(2,:);
        
        plot(x,y, 'Linewidth', 2);
        ax = gca;
        ax.FontSize = 18;
        ax.XLabel.String = ('X');
        ax.XLabel.FontSize = 16;
        ax.XLabel.FontWeight = 'bold';
        ax.XLabel.Color = 'k';
        ax.YLabel.String = ('Intensity');
        ax.YLabel.FontSize = 16;
        ax.YLabel.FontWeight = 'bold';
        ax.YLabel.Color = 'k';
        t = title('Intensity vs. X, GH 1,0');
        t.Color = 'k';
        t.FontSize = 24;

    else
        disp('ERROR: line out of range')
    end

end

status = fclose('all');

