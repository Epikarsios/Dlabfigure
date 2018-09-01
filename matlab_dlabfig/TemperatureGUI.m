function varargout = TemperatureGUI(varargin)
% TEMPERATUREGUI MATLAB code for TemperatureGUI.fig
%      TEMPERATUREGUI, by itself, creates a new TEMPERATUREGUI or raises the existing
%      singleton*.
%
%      H = TEMPERATUREGUI returns the handle to a new TEMPERATUREGUI or the handle to
%      the existing singleton*.
%
%      TEMPERATUREGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEMPERATUREGUI.M with the given input arguments.
%
%      TEMPERATUREGUI('Property','Value',...) creates a new TEMPERATUREGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TemperatureGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TemperatureGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TemperatureGUI

% Last Modified by GUIDE v2.5 14-Aug-2018 14:24:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TemperatureGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @TemperatureGUI_OutputFcn, ...
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


% --- Executes just before TemperatureGUI is made visible.
function TemperatureGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TemperatureGUI (see VARARGIN)
handles.Lakeshore_Serial_Obj = serial('COM3');
handles.Lakeshore_Serial_Obj.BaudRate = 57600;
handles.Lakeshore_Serial_Obj.Parity = 'odd';
handles.Lakeshore_Serial_Obj.DataBits = 7;
fopen(handles.Lakeshore_Serial_Obj);
handles.Temperature_A = query(Serial_Obj,'KRDG? A');
handles.Temperature_C = query(Serial_Obj,'KRDG? C');
set(handles.Temperature_A_Value,'String', handles.Temperature_A);
set(handles.Temperature_C_Value,'String', handles.Temperature_C);

handles.input = '';
handles.Heater_Range = 0;

% Choose default command line output for TemperatureGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TemperatureGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TemperatureGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Set_Temperature_pushbutton.
function Set_Temperature_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Set_Temperature_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Temperature_Edit_txt_Callback(hObject, eventdata, handles)
% hObject    handle to Temperature_Edit_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Temperature_Edit_txt as text
%        str2double(get(hObject,'String')) returns contents of Temperature_Edit_txt as a double

  
% --- Executes during object creation, after setting all properties.
function Temperature_Edit_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Temperature_Edit_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Low_radiobutton.
function Low_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to Low_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Heater_Range = '1';
% Hint: get(hObject,'Value') returns toggle state of Low_radiobutton


% --- Executes on button press in Medium_radiobutton.
function Medium_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to Medium_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Heater_Range = '2';
% Hint: get(hObject,'Value') returns toggle state of Medium_radiobutton


% --- Executes on button press in High_radiobutton.
function High_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to High_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Heater_Range = '3';
% Hint: get(hObject,'Value') returns toggle state of High_radiobutton


% --- Executes on button press in Input_A_radiobutton.
function Input_A_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to Input_A_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.input = 'A';
% Hint: get(hObject,'Value') returns toggle state of Input_A_radiobutton


% --- Executes on button press in Input_C_radiobutton.
function Input_C_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to Input_C_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.input = 'C';
% Hint: get(hObject,'Value') returns toggle state of Input_C_radiobutton


% --- Executes during object creation, after setting all properties.
function Temperature_A_Value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Temperature_A_Value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Close_pushbutton.
function Close_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Close_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fclose(handles.Lakeshore_Serial_Obj);
delete(handles.Lakeshore_Serial_Obj);
clear handles.Lakeshore_Serial_Obj;

