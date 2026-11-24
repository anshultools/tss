% Sr. No. 09 - Personal Portfolio (MATLAB GUI)
clc;
clear;
close all;

% Main webpage-style portfolio window
f = figure('Name','My Personal Portfolio', 
    'Position',[100 100 850 600], 
    'Color',[0.95 0.97 1], 
    'MenuBar','none', 
    'NumberTitle','off');

% Header section
header = uipanel(f, 
    'Position',[0 0.78 1 0.22], 
    'BackgroundColor',[0.08 0.18 0.35], 
    'BorderType','none');

uicontrol(header,'Style','text',
    'String','MY PERSONAL PORTFOLIO', 
    'Units','normalized', 
    'Position',[0.15 0.48 0.70 0.34], 
    'FontSize',23,'FontWeight','bold', 
    'ForegroundColor',[1 1 1], 
    'BackgroundColor',[0.08 0.18 0.35]);

uicontrol(header,'Style','text', 
    'String','Welcome to my webpage', 
    'Units','normalized', ...
    'Position',[0.15 0.16 0.70 0.24], 
    'FontSize',12, ...
    'ForegroundColor',[0.75 0.88 1], 
    'BackgroundColor',[0.08 0.18 0.35]);

% Name display area
ax = axes('Parent',f,'Position',[0.18 0.62 0.64 0.10], 
    'XLim',[0 1],'YLim',[0 1], 
    'XTick',[],'YTick',[],'Box','off', 
    'Color',[0.95 0.97 1]);

hName = text(ax,0.5,0.5,'NAME',  
    'FontSize',24,'FontWeight','bold', 
    'Color',[0.05 0.30 0.70], 
    'HorizontalAlignment','center', 
    'VerticalAlignment','middle');

% Personal details
uicontrol(f,'Style','text','String','Branch:', 
    'Position',[90 340 120 30],'FontSize',15, 
    'FontWeight','bold','BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

uicontrol(f,'Style','text', 
    'String','Electronics & Telecommunication', 
    'Position',[230 340 390 30],'FontSize',14, 
    'BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

uicontrol(f,'Style','text','String','College:', 
    'Position',[90 300 120 30],'FontSize',15, 
    'FontWeight','bold','BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

uicontrol(f,'Style','text','String','GCOE Jalgaon', 
    'Position',[230 300 390 30],'FontSize',14, 
    'BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

% Hobbies section
uicontrol(f,'Style','text','String','MY HOBBIES', 
    'Position',[90 245 180 30],'FontSize',16,
    'FontWeight','bold','ForegroundColor',[0.05 0.30 0.70], 
    'BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

uicontrol(f,'Style','text', 
    'String','Reading  |  Travelling  |  Painting', 
    'Position',[90 215 600 28],'FontSize',14, 
    'BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

% About Me section
uicontrol(f,'Style','text','String','ABOUT ME', 
    'Position',[90 165 180 30],'FontSize',16, 
    'FontWeight','bold','ForegroundColor',[0.05 0.30 0.70], 
    'BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

uicontrol(f,'Style','text', 
    'String','I am an engineering student interested in learning and exploring advancing technologies.', 
    'Position',[90 125 670 35],'FontSize',13, 
    'BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','left');

% Interactive Rotate button
uicontrol(f,'Style','pushbutton','String','Rotate My Name', 
    'Position',[325 65 200 42],'FontSize',14, 
    'BackgroundColor',[0.15 0.40 0.75], 
    'ForegroundColor',[1 1 1], 
    'Callback',@(~,~) rotateName(hName));

% Footer
uicontrol(f,'Style','text', 
    'String','Created using MATLAB GUI', 
    'Position',[230 25 390 22],'FontSize',10, 
    'BackgroundColor',[0.95 0.97 1], 
    'HorizontalAlignment','center');

% Rotation function
function rotateName(nameHandle)
    for angle = 0:5:360
        if ~isvalid(nameHandle)
            return;
        end
        nameHandle.Rotation = angle;
        drawnow;
        pause(0.03);
    end
    nameHandle.Rotation = 0;
end
