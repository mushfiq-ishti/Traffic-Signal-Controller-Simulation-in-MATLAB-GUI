function varargout = traffic_system(varargin)
% TRAFFIC_SYSTEM MATLAB code for traffic_system.fig
%      TRAFFIC_SYSTEM, by itself, creates a new TRAFFIC_SYSTEM or raises the existing
%      singleton*.
%
%      H = TRAFFIC_SYSTEM returns the handle to a new TRAFFIC_SYSTEM or the handle to
%      the existing singleton*.
%
%      TRAFFIC_SYSTEM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAFFIC_SYSTEM.M with the given input arguments.
%
%      TRAFFIC_SYSTEM('Property','Value',...) creates a new TRAFFIC_SYSTEM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before traffic_system_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to traffic_system_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help traffic_system

% Last Modified by GUIDE v2.5 20-Apr-2023 22:25:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @traffic_system_OpeningFcn, ...
                   'gui_OutputFcn',  @traffic_system_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before traffic_system is made visible.
function traffic_system_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to traffic_system (see VARARGIN)

% Choose default command line output for traffic_system
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes traffic_system wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = traffic_system_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
AA=imread('Start.jpg');
imshow(AA);
%%%%%%%%%%%%%%%
for ii=1:1  % as many times we want to run the cycle of Green to red Light
axes(handles.axes3);
AAG=imread('GreenLight.jpg');
imshow(AAG);

axes(handles.axes4);
AAR11=imread('WhiteLight.jpg');
imshow(AAR11);
pause(0.1);
end
axes(handles.axes2);

for i=1:8 % Green Light for 8 seconds
    filename=[num2str(i) '.jpg'];
    I=imread(filename);
    imshow(I);
    pause(1);
end
%%%%%%%%%%%%
%%%%%%%%%%%%
for ii=1:1  % as many times we want to run the cycle of Green to red Light
    axes(handles.axes4);
    AAY=imread('YellowLight.jpg');
    imshow(AAY);    

  axes(handles.axes3);
  AAR11=imread('WhiteLight.jpg');
  imshow(AAR11);
  axes(handles.axes5);
  AAR1=imread('WhiteLight.jpg');
  imshow(AAR1);

  pause(0.001);

end
axes(handles.axes2);

for i=9:12
    filename=[num2str(i) '.jpg'];
    I=imread(filename);
    imshow(I);
    pause(1);
end
%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%
for ii=1:1  % as many times we want to run the cycle of Green to red Light
axes(handles.axes5)
AAR=imread('RedLight.jpg');
imshow(AAR);

axes(handles.axes3)
AAR11=imread('WhiteLight.jpg');
imshow(AAR11);


axes(handles.axes4);
AAR1=imread("WhiteLight.jpg");
imshow(AAR1);

pause(0.001);
end

axes(handles.axes1);
AAw=imread('Stop.jpg');
imshow(AAw);
axes(handles.axes2);

for i=13:15
    filename=[num2str(i) '.jpg'];
    I=imread(filename);
    imshow(I);
    pause(1);
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
close all;
%quit;