function varargout = Create_Dlab_Win(varargin)
% CREATE_DLAB_WIN MATLAB code for Create_Dlab_Win.fig
%      CREATE_DLAB_WIN, by itself, creates a new CREATE_DLAB_WIN or raises the existing
%      singleton*.
%
%      H = CREATE_DLAB_WIN returns the handle to a new CREATE_DLAB_WIN or the handle to
%      the existing singleton*.
%
%      CREATE_DLAB_WIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CREATE_DLAB_WIN.M with the given input arguments.
%
%      CREATE_DLAB_WIN('Property','Value',...) creates a new CREATE_DLAB_WIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Create_Dlab_Win_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Create_Dlab_Win_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Create_Dlab_Win

% Last Modified by GUIDE v2.5 14-Aug-2018 11:13:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Create_Dlab_Win_OpeningFcn, ...
                   'gui_OutputFcn',  @Create_Dlab_Win_OutputFcn, ...
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


% --- Executes just before Create_Dlab_Win is made visible.
function Create_Dlab_Win_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Create_Dlab_Win (see VARARGIN)
set(handles.Date_Edit_txt,'String', date)
% Choose default command line output for Create_Dlab_Win
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Create_Dlab_Win wait for user response (see UIRESUME)
% uiwait(handles.Create_Dlab_Win);


% --- Outputs from this function are returned to the command line.
function varargout = Create_Dlab_Win_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Continue_Pushbutton.
function Continue_Pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Continue_Pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Date_Edit_txt_Callback(hObject, eventdata, handles)

% hObject    handle to Date_Edit_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Date_Edit_txt as text
%        str2double(get(hObject,'String')) returns contents of Date_Edit_txt as a double


% --- Executes during object creation, after setting all properties.
function Date_Edit_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Date_Edit_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Lab_Members_Pop_Menu.
function Lab_Members_Pop_Menu_Callback(hObject, eventdata, handles)
% hObject    handle to Lab_Members_Pop_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Lab_Members_Pop_Menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Lab_Members_Pop_Menu


% --- Executes during object creation, after setting all properties.
function Lab_Members_Pop_Menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lab_Members_Pop_Menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in VQM_Checkbox.
function VQM_Checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to VQM_Checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of VQM_Checkbox


% --- Executes on button press in Temerature_Checkbox.
function Temerature_Checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to Temerature_Checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Temerature_Checkbox


% --- Executes on button press in Picoammeter_Checkbox.
function Picoammeter_Checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to Picoammeter_Checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Picoammeter_Checkbox


% --- Executes on button press in Electron_Gun_Checkbox.
function Electron_Gun_Checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to Electron_Gun_Checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Electron_Gun_Checkbox


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Choose_Folder_Pushbutton.
function Choose_Folder_Pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Choose_Folder_Pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[Foldername, Path] = uiputfile('.Dlab');
mkdir(Path, Foldername);
