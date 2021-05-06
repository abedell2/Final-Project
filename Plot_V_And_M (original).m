% MECH 325 ****************************************************
% Example script for drawing V and M
%   q is assumed positive down (assumed given as a function q(x))
%   V is assumed positive down when looking from right to left
%   M is assumed to be positive CCW when looking from right to left
%
% Author: M. Negahban
% Date: 3/5/2021
% *************************************************************

clear %Clear any prior variables
close all %Closes all open plots
format long %Use more accurate calculations

x_min = 0; %Start point of plot
x_max = 50; %End point of plot
Dx = 0.1; %Step size between points

%Make the plot data for x and M
The_x = x_min:Dx:x_max; %Make The_x an array of points starting with x_min, spaced at Dx and ending at x_max
The_V = V(The_x); %Make The_V the same size as The_x and set each equatl to V(x)
The_M = M(The_x); %Make The_M the same size as The_x and set each equatl to M(x)


%Plot the data
figure('Name','Shear force diagram'), hold on, plot(The_x, The_V, 'b-', 'LineWidth', 3);
xlim([x_min,x_max]);
%ylim([-50,50]);
xlabel('x (in)');
ylabel('V (lb)');
hlegend_V = legend(('Shear load'),'Location','northeast','LineWidth',1);
set(gca, 'FontSize', 16, 'FontName', 'Arial');

figure('Name','Bending moment diagram'), hold on, plot(The_x, The_M, 'r-', 'LineWidth', 3);
xlim([x_min,x_max]);
%ylim([-50,50]);
xlabel('x (in)');
ylabel('M (lb-in)');
hlegend_M = legend(('Bending moment'),'Location','northeast','LineWidth',1);
set(gca, 'FontSize', 16, 'FontName', 'Arial');



