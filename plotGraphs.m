function[]= plotGraphs(xValue,Length,qValue,pValue)



format long %Use more accurate calculations
x_min = 0;
x_max = Length;
%Make the plot data for x and M
The_x = 1:Length; %x_min:Dx:x_max; %Make The_x an array of points starting with x_min, spaced at Dx and ending at x_max
The_V = V(xValue,Length,qValue,pValue); %Make The_V the same size as The_x and set each equatl to V(x)
The_M = M(xValue,Length,qValue,pValue); %Make The_M the same size as The_x and set each equatl to M(x)


%Plot the data

%plot the shear force at each point
subplot(3,1,2)
hold on, plot(The_x, The_V, 'b-', 'LineWidth', 3);

xlim([x_min,x_max]);
xlabel('x (in)');
ylabel('V (lb)');
hlegend_V = legend(('Shear load'),'Location','northeast','LineWidth',1);
set(gca, 'FontSize', 16, 'FontName', 'Arial');
hold on

% plot the bending moment
subplot(3,1,3)
hold on, plot(The_x, The_M, 'r-', 'LineWidth', 3);
xlim([x_min,x_max]);

xlabel('x (in)');
ylabel('M (lb-in)');
hlegend_M = legend(('Bending moment'),'Location','northeast','LineWidth',1);
set(gca, 'FontSize', 16, 'FontName', 'Arial');
end