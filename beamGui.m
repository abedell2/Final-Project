function[]=beamGui()

gui.fig = figure('position',[650,500,500,500],'name','Beam');%starts a figure

baseplot;%calls function baseplot, which resembles the beam

gui.xValueText = uicontrol('style','text','position',[20 475 50 20],'string','X Value:','horizontalalignment','right');
gui.xValueEdit = uicontrol('style','edit','position',[80 475 45 20]);
gui.LengthText = uicontrol('style','text','position',[130 475 50 20],'string','Length:','horizontalalignment','right');
gui.LengthEdit = uicontrol('style','edit','position',[190 475 45 20]);
gui.qValueText = uicontrol('style','text','position',[240 475 50 20],'string','q Value:','horizontalalignment','right');
gui.qValueEdit = uicontrol('style','edit','position',[300 475 45 20]);
gui.pValueText = uicontrol('style','text','position',[350 475 50 20],'string','P value:','horizontalalignment','right');
gui.pValueEdit = uicontrol('style','edit','position',[410 475 45 20]);
%the 8 lines above are for the 4 diferent inputs that are taken in

gui.button= uicontrol('style','pushbutton','string','calculate','callback',{@qvalueCallback,gui});

end

%here are the four call-backs,I just have the go button run this function
%to capture all four possible inputs

function[]= qvalueCallback(~,~,gui)
xValue = str2num(gui.xValueEdit.String);
Length = str2num(gui.LengthEdit.String);
qValue = str2num(gui.qValueEdit.String);
pValue = str2num(gui.pValueEdit.String);

plotGraphs(xValue,Length,qValue,pValue)%values from other input boxes on gui
end


