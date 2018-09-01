function varargout = PVNRT(varargin)
% PVNRT MATLAB code for PVNRT.fig
%      PVNRT, by itself, creates a new PVNRT or raises the existing
%      singleton*.
%
%      H = PVNRT returns the handle to a new PVNRT or the handle to
%      the existing singleton*.
%
%      PVNRT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PVNRT.M with the given input arguments.
%
%      PVNRT('Property','Value',...) creates a new PVNRT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PVNRT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PVNRT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PVNRT

% Last Modified by GUIDE v2.5 07-Aug-2018 17:04:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PVNRT_OpeningFcn, ...
                   'gui_OutputFcn',  @PVNRT_OutputFcn, ...
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


% --- Executes just before PVNRT is made visible.
function PVNRT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PVNRT (see VARARGIN)

handles.R = 62.3636;
handles.P = str2num(get(handles.Pressure_txt, 'string'));
handles.V   = str2num(get(handles.Volume_txt, 'string'));
handles.n = str2num(get(handles.Mol_txt, 'string'))*10^(-6);
handles.T = str2num(get(handles.Temperture_txt, 'string'));





% Choose default command line output for PVNRT
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PVNRT wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PVNRT_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Pressure_txt_Callback(hObject, eventdata, handles)
% hObject    handle to Pressure_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pressure_txt as text
%        str2double(get(hObject,'String')) returns contents of Pressure_txt as a double


% --- Executes during object creation, after setting all properties.
function Pressure_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pressure_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Volume_txt_Callback(hObject, eventdata, handles)
% hObject    handle to Volume_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Volume_txt as text
%        str2double(get(hObject,'String')) returns contents of Volume_txt as a double


% --- Executes during object creation, after setting all properties.
function Volume_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Volume_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Mol_txt_Callback(hObject, eventdata, handles)
% hObject    handle to Mol_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Mol_txt as text
%        str2double(get(hObject,'String')) returns contents of Mol_txt as a double


% --- Executes during object creation, after setting all properties.
function Mol_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mol_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Temperture_txt_Callback(hObject, eventdata, handles)
% hObject    handle to Temperture_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Temperture_txt as text
%        str2double(get(hObject,'String')) returns contents of Temperture_txt as a double


% --- Executes during object creation, after setting all properties.
function Temperture_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Temperture_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Pressure_rad.
function Pressure_rad_Callback(hObject, eventdata, handles)
% hObject    handle to Pressure_rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tempP = (handles.n*handles.R*handles.T)/ handles.V
set(handles.Pressure_txt,'String',num2str(tempP))
% Hint: get(hObject,'Value') returns toggle state of Pressure_rad


% --- Executes on button press in Volume_rad.
function Volume_rad_Callback(hObject, eventdata, handles)
% hObject    handle to Volume_rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tempV = (handles.n*handles.R*handles.T)/ handles.P
set(handles.Volume_txt,'String',num2str(tempV))

 msgbox(num2str(handles.T));
% Hint: get(hObject,'Value') returns toggle state of Volume_rad


% --- Executes on button press in Mol_rad.
function Mol_rad_Callback(hObject, eventdata, handles)
% hObject    handle to Mol_rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tempn = (handles.P*handles.V)/ (handles.R * handles.T)
set(handles.Mol_txt,'String',num2str(tempn))
% Hint: get(hObject,'Value') returns toggle state of Mol_rad


% --- Executes on button press in Temperture_rad.
function Temperture_rad_Callback(hObject, eventdata, handles)
% hObject    handle to Temperture_rad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tempT = (handles.P*handles.V)/ (handles.R * handles.n)
set(handles.Temperture_txt,'String',num2str(tempT))
% Hint: get(hObject,'Value') returns toggle state of Temperture_rad
