function [coinvalue,x_plot,y_plot,col] = AddCoinToPlotAndCount(x,y,cls)
% initialize radians for defining x_plot and y_plot using cos and sin functions
rads = 0:2*pi/32:2*pi;
% initialize parameters for radius and color of circle for each type of coin
rD=22;
rN=30;
rQ=40; 
% use if-elseif statement to define x_plot, y_plot, col
%   when cls is 1, we found a dime
%   when cls is 2, we found a nickel
%   when cls is 3, we found a quarter
if(cls==1) 
    coinvalue=10; 
    x_plot=x+rD*cos(rads); 
    y_plot=y+rD*sin(rads); 
    col='r'; 
elseif(cls==2) 
    coinvalue=5; 
    x_plot=x+rN*cos(rads); 
    y_plot=y+rN*sin(rads); 
    col='g'; 
else 
    coinvalue=25; 
    x_plot=x+rQ*cos(rads); 
    y_plot=y+rQ*sin(rads); 
    col='m'; 
end

plot(x_plot,y_plot,col);
end
