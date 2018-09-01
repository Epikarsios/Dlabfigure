function varargout = View_Plot(varargin)
% VIEW_PLOT MATLAB code for View_Plot.fig
%      VIEW_PLOT, by itself, creates a new VIEW_PLOT or raises the existing
%      singleton*.
%
%      H = VIEW_PLOT returns the handle to a new VIEW_PLOT or the handle to
%      the existing singleton*.
%
%      VIEW_PLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIEW_PLOT.M with the given input arguments.
%
%      VIEW_PLOT('Property','Value',...) creates a new VIEW_PLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before View_Plot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to View_Plot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help View_Plot

% Last Modified by GUIDE v2.5 12-Aug-2018 23:47:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @View_Plot_OpeningFcn, ...
                   'gui_OutputFcn',  @View_Plot_OutputFcn, ...
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


% --- Executes just before View_Plot is made visible.
function View_Plot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to View_Plot (see VARARGIN)
axes(handles.two)
peaks(35)
handles.x = 0:1:25;
handles.y = sin(handles.x);
axes(handles.one);
plot(handles.x,handles.y);
% Choose default command line output for View_Plot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes View_Plot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = View_Plot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Close_button.
function Close_button_Callback(hObject, eventdata, handles)
% hObject    handle to Close_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'Visible','off');
PVNRT;