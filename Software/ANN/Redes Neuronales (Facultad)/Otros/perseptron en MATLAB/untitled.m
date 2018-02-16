function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 27-Jan-2015 23:00:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton4


% --- Executes on button press in togglebutton5.
function togglebutton5_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton5


% --- Executes on button press in togglebutton6.
function togglebutton6_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton6


% --- Executes on button press in togglebutton7.
function togglebutton7_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton7


% --- Executes on button press in togglebutton8.
function togglebutton8_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton8


% --- Executes on button press in togglebutton9.
function togglebutton9_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton9


% --- Executes on button press in togglebutton10.
function togglebutton10_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton10


% --- Executes on button press in togglebutton11.
function togglebutton11_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton11


% --- Executes on button press in togglebutton12.
function togglebutton12_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton12


% --- Executes on button press in togglebutton13.
function togglebutton13_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton13


% --- Executes on button press in togglebutton14.
function togglebutton14_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton14


% --- Executes on button press in togglebutton15.
function togglebutton15_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton15


% --- Executes on button press in togglebutton16.
function togglebutton16_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton16


% --- Executes on button press in togglebutton17.
function togglebutton17_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton17


% --- Executes on button press in togglebutton18.
function togglebutton18_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton18


% --- Executes on button press in togglebutton19.
function togglebutton19_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton19


% --- Executes on button press in togglebutton20.
function togglebutton20_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton20


% --- Executes on button press in togglebutton21.
function togglebutton21_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton21


% --- Executes on button press in togglebutton22.
function togglebutton22_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton22


% --- Executes on button press in togglebutton23.
function togglebutton23_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton23


% --- Executes on button press in togglebutton24.
function togglebutton24_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton24


% --- Executes on button press in togglebutton25.
function togglebutton25_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton25


% --- Executes on button press in togglebutton26.
function togglebutton26_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton26


% --- Executes on button press in togglebutton27.
function togglebutton27_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton27


% --- Executes on button press in togglebutton28.
function togglebutton28_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton28


% --- Executes on button press in togglebutton29.
function togglebutton29_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton29


% --- Executes on button press in togglebutton30.
function togglebutton30_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton30


% --- Executes on button press in togglebutton31.
function togglebutton31_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton31


% --- Executes on button press in togglebutton32.
function togglebutton32_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton32


% --- Executes on button press in togglebutton33.
function togglebutton33_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton33


% --- Executes on button press in togglebutton34.
function togglebutton34_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton34


% --- Executes on button press in togglebutton35.
function togglebutton35_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton35


% --- Executes on button press in togglebutton36.
function togglebutton36_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton36


% --- Executes on button press in togglebutton37.
function togglebutton37_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton37


% --- Executes on button press in togglebutton38.
function togglebutton38_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton38


% --- Executes on button press in togglebutton39.
function togglebutton39_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton39


% --- Executes on button press in togglebutton40.
function togglebutton40_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton40


% --- Executes on button press in togglebutton41.
function togglebutton41_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton41


% --- Executes on button press in togglebutton42.
function togglebutton42_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton42


% --- Executes on button press in togglebutton43.
function togglebutton43_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton43


% --- Executes on button press in togglebutton44.
function togglebutton44_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton44


% --- Executes on button press in togglebutton45.
function togglebutton45_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton45


% --- Executes on button press in togglebutton46.
function togglebutton46_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton46


% --- Executes on button press in togglebutton47.
function togglebutton47_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton47


% --- Executes on button press in togglebutton48.
function togglebutton48_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton48


% --- Executes on button press in togglebutton49.
function togglebutton49_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton49


% --- Executes on button press in togglebutton50.
function togglebutton50_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton50


% --- Executes on button press in togglebutton51.
function togglebutton51_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton51


% --- Executes on button press in togglebutton52.
function togglebutton52_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton52


% --- Executes on button press in togglebutton53.
function togglebutton53_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton53


% --- Executes on button press in togglebutton54.
function togglebutton54_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton54


% --- Executes on button press in togglebutton55.
function togglebutton55_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton55


% --- Executes on button press in togglebutton56.
function togglebutton56_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton56


% --- Executes on button press in togglebutton57.
function togglebutton57_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton57


% --- Executes on button press in togglebutton58.
function togglebutton58_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton58


% --- Executes on button press in togglebutton59.
function togglebutton59_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton59


% --- Executes on button press in togglebutton60.
function togglebutton60_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton60


% --- Executes on button press in togglebutton61.
function togglebutton61_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton61


% --- Executes on button press in togglebutton62.
function togglebutton62_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton62


% --- Executes on button press in togglebutton63.
function togglebutton63_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton63


% --- Executes on button press in togglebutton64.
function togglebutton64_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton64



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in APRENDER.
function APRENDER_Callback(hObject, eventdata, handles)
w=evalin('base','w')
b=evalin('base','b')
p=evalin('base','p')
t=evalin('base','t')
pep=ones(1,64)
set(handles.text5,'string','-------');
set(handles.text9,'string','');

assignin('base', 'pep', pep)
pep(1)=get(handles.togglebutton1,'value')
pep(2)=get(handles.togglebutton2,'value')
pep(3)=get(handles.togglebutton3,'value')
pep(4)=get(handles.togglebutton4,'value')
pep(5)=get(handles.togglebutton5,'value')
pep(6)=get(handles.togglebutton6,'value')
pep(7)=get(handles.togglebutton7,'value')
pep(8)=get(handles.togglebutton8,'value')
pep(9)=get(handles.togglebutton9,'value')
pep(10)=get(handles.togglebutton10,'value')
pep(11)=get(handles.togglebutton11,'value')
pep(12)=get(handles.togglebutton12,'value')
pep(13)=get(handles.togglebutton13,'value')
pep(14)=get(handles.togglebutton14,'value')
pep(15)=get(handles.togglebutton15,'value')
pep(16)=get(handles.togglebutton16,'value')
pep(17)=get(handles.togglebutton17,'value')
pep(18)=get(handles.togglebutton18,'value')
pep(19)=get(handles.togglebutton19,'value')
pep(20)=get(handles.togglebutton20,'value')
pep(21)=get(handles.togglebutton21,'value')
pep(22)=get(handles.togglebutton22,'value')
pep(23)=get(handles.togglebutton23,'value')
pep(24)=get(handles.togglebutton24,'value')
pep(25)=get(handles.togglebutton25,'value')
pep(26)=get(handles.togglebutton26,'value')
pep(27)=get(handles.togglebutton27,'value')
pep(28)=get(handles.togglebutton28,'value')
pep(29)=get(handles.togglebutton29,'value')
pep(30)=get(handles.togglebutton30,'value')
pep(31)=get(handles.togglebutton31,'value')
pep(32)=get(handles.togglebutton32,'value')
pep(33)=get(handles.togglebutton33,'value')
pep(34)=get(handles.togglebutton34,'value')
pep(35)=get(handles.togglebutton35,'value')
pep(36)=get(handles.togglebutton36,'value')
pep(37)=get(handles.togglebutton37,'value')
pep(38)=get(handles.togglebutton38,'value')
pep(39)=get(handles.togglebutton39,'value')
pep(40)=get(handles.togglebutton40,'value')
pep(41)=get(handles.togglebutton41,'value')
pep(42)=get(handles.togglebutton42,'value')
pep(43)=get(handles.togglebutton43,'value')
pep(44)=get(handles.togglebutton44,'value')
pep(45)=get(handles.togglebutton45,'value')
pep(46)=get(handles.togglebutton46,'value')
pep(47)=get(handles.togglebutton47,'value')
pep(48)=get(handles.togglebutton48,'value')
pep(49)=get(handles.togglebutton49,'value')
pep(50)=get(handles.togglebutton50,'value')
pep(51)=get(handles.togglebutton51,'value')
pep(52)=get(handles.togglebutton52,'value')
pep(53)=get(handles.togglebutton53,'value')
pep(54)=get(handles.togglebutton54,'value')
pep(55)=get(handles.togglebutton55,'value')
pep(56)=get(handles.togglebutton56,'value')
pep(57)=get(handles.togglebutton57,'value')
pep(58)=get(handles.togglebutton58,'value')
pep(59)=get(handles.togglebutton59,'value')
pep(60)=get(handles.togglebutton60,'value')
pep(61)=get(handles.togglebutton61,'value')
pep(62)=get(handles.togglebutton62,'value')
pep(63)=get(handles.togglebutton63,'value')
pep(64)=get(handles.togglebutton64,'value')
assignin('base', 'pep', pep)

p= [p ;pep]
assignin('base', 'p', p)

tet=get(handles.edit1,'string');
assignin('base', 'tet', tet)
if tet=='A'
    t=[t ;0 0 0 0 1]
elseif tet=='B'
    t=[t; 0 0 0 1 0]
elseif tet=='C'
    t=[t; 0 0 0 1 1]    
elseif tet=='D'
    t=[t; 0 0 1 0 0]
elseif tet=='E'
    t=[t; 0 0 1 0 1]    
elseif tet=='F'
    t=[t; 0 0 1 1 0]    
elseif tet=='G'
    t=[t; 0 0 1 1 1]    
elseif tet=='H'
    t=[t; 0 1 0 0 0]    
elseif tet=='I'
    t=[t; 0 1 0 0 1]   
elseif tet=='J'
    t=[t; 0 1 0 1 0]    
elseif tet=='K'
    t=[t; 0 1 0 1 1]    
elseif tet=='L'
    t=[t; 0 1 1 0 0]    
elseif tet=='M'
    t=[t; 0 1 1 0 1]    
elseif tet=='N'
    t=[t; 0 1 1 1 0]    
elseif tet=='O'
    t=[t; 0 1 1 1 1]
elseif tet=='P'
    t=[t; 1 0 0 0 0]
elseif tet=='Q'
    t=[t; 1 0 0 0 1]
elseif tet=='R'
    t=[t; 1 0 0 1 0]
elseif tet=='S'
    t=[t; 1 0 0 1 1]
elseif tet=='T'
    t=[t; 1 0 1 0 0]
elseif tet=='U'
    t=[t; 1 0 1 0 1]
elseif tet=='V'
    t=[t; 1 0 1 1 0]    
elseif tet=='W'
    t=[t; 1 0 1 1 1]    
elseif tet=='X'
    t=[t; 1 1 0 0 0]    
elseif tet=='Y'
    t=[t; 1 1 0 0 1]    
else tet=='Z'
    t=[t; 1 1 0 1 0]       
end

assignin('base', 't', t)

ap(p,t,w,b)
k=evalin('base','k')

if k ~= 'fallo'
    set(handles.text1,'string','OK')
    set(handles.text5,'string',k)
else
   p(length(p(:,1)),:)=[]
   t(length(t(:,1)),:)=[]
   assignin('base', 't', t)
   assignin('base', 'p', p)
   w=evalin('base','w')
   b=evalin('base','b')
   p=evalin('base','p')
   t=evalin('base','t')
   ap(p,t,w,b)
   set(handles.text9,'string','NO PUEDE SER APRENDIDO')
end



% --- Executes on button press in CORROBORAR.
function CORROBORAR_Callback(hObject, eventdata, handles)
set(handles.text5,'string','-------');
set(handles.text9,'string','');
w=evalin('base','w')
b=evalin('base','b')
pep=zeros(1,64)
assignin('base', 'pep', pep)
pep(1)=get(handles.togglebutton1,'value')
pep(2)=get(handles.togglebutton2,'value')
pep(3)=get(handles.togglebutton3,'value')
pep(4)=get(handles.togglebutton4,'value')
pep(5)=get(handles.togglebutton5,'value')
pep(6)=get(handles.togglebutton6,'value')
pep(7)=get(handles.togglebutton7,'value')
pep(8)=get(handles.togglebutton8,'value')
pep(9)=get(handles.togglebutton9,'value')
pep(10)=get(handles.togglebutton10,'value')
pep(11)=get(handles.togglebutton11,'value')
pep(12)=get(handles.togglebutton12,'value')
pep(13)=get(handles.togglebutton13,'value')
pep(14)=get(handles.togglebutton14,'value')
pep(15)=get(handles.togglebutton15,'value')
pep(16)=get(handles.togglebutton16,'value')
pep(17)=get(handles.togglebutton17,'value')
pep(18)=get(handles.togglebutton18,'value')
pep(19)=get(handles.togglebutton19,'value')
pep(20)=get(handles.togglebutton20,'value')
pep(21)=get(handles.togglebutton21,'value')
pep(22)=get(handles.togglebutton22,'value')
pep(23)=get(handles.togglebutton23,'value')
pep(24)=get(handles.togglebutton24,'value')
pep(25)=get(handles.togglebutton25,'value')
pep(26)=get(handles.togglebutton26,'value')
pep(27)=get(handles.togglebutton27,'value')
pep(28)=get(handles.togglebutton28,'value')
pep(29)=get(handles.togglebutton29,'value')
pep(30)=get(handles.togglebutton30,'value')
pep(31)=get(handles.togglebutton31,'value')
pep(32)=get(handles.togglebutton32,'value')
pep(33)=get(handles.togglebutton33,'value')
pep(34)=get(handles.togglebutton34,'value')
pep(35)=get(handles.togglebutton35,'value')
pep(36)=get(handles.togglebutton36,'value')
pep(37)=get(handles.togglebutton37,'value')
pep(38)=get(handles.togglebutton38,'value')
pep(39)=get(handles.togglebutton39,'value')
pep(40)=get(handles.togglebutton40,'value')
pep(41)=get(handles.togglebutton41,'value')
pep(42)=get(handles.togglebutton42,'value')
pep(43)=get(handles.togglebutton43,'value')
pep(44)=get(handles.togglebutton44,'value')
pep(45)=get(handles.togglebutton45,'value')
pep(46)=get(handles.togglebutton46,'value')
pep(47)=get(handles.togglebutton47,'value')
pep(48)=get(handles.togglebutton48,'value')
pep(49)=get(handles.togglebutton49,'value')
pep(50)=get(handles.togglebutton50,'value')
pep(51)=get(handles.togglebutton51,'value')
pep(52)=get(handles.togglebutton52,'value')
pep(53)=get(handles.togglebutton53,'value')
pep(54)=get(handles.togglebutton54,'value')
pep(55)=get(handles.togglebutton55,'value')
pep(56)=get(handles.togglebutton56,'value')
pep(57)=get(handles.togglebutton57,'value')
pep(58)=get(handles.togglebutton58,'value')
pep(59)=get(handles.togglebutton59,'value')
pep(60)=get(handles.togglebutton60,'value')
pep(61)=get(handles.togglebutton61,'value')
pep(62)=get(handles.togglebutton62,'value')
pep(63)=get(handles.togglebutton63,'value')
pep(64)=get(handles.togglebutton64,'value')
assignin('base', 'pep', pep)

resultado=neu(pep,w,b);

assignin('base', 'resultado', resultado);
        
if resultado==[0 0 0 0 1]
    yeah='A'
elseif resultado==[0 0 0 1 0]
    yeah='B'
elseif resultado==[0 0 0 1 1]
    yeah='C'
elseif resultado==[0 0 1 0 0]
    yeah='D'    
elseif resultado==[0 0 1 0 1]
    yeah='E'
elseif resultado==[0 0 1 1 0]
    yeah='F'    
elseif resultado==[0 0 1 1 1]
    yeah='G'    
elseif resultado==[0 1 0 0 0]
    yeah='H'    
elseif resultado==[0 1 0 0 1]
    yeah='I'
elseif resultado==[0 1 0 1 0]
    yeah='J' 
elseif resultado==[0 1 0 1 1]
    yeah='K'
elseif resultado==[0 1 1 0 0]
    yeah='L'    
elseif resultado==[0 1 1 0 1]
    yeah='M'    
elseif resultado==[0 1 1 1 0]
    yeah='N'    
elseif resultado==[0 1 1 1 1]
    yeah='O'    
elseif resultado==[1 0 0 0 0]
    yeah='P'
elseif resultado==[1 0 0 0 1]
    yeah='Q'
elseif resultado==[1 0 0 1 0]
    yeah='R'    
elseif resultado==[1 0 0 1 1]
    yeah='S'    
elseif resultado==[1 0 1 0 0]
    yeah='T'    
elseif resultado==[1 0 1 0 1]
    yeah='U'
elseif resultado==[1 0 1 1 0]
    yeah='V'    
elseif resultado==[1 0 1 1 1]
    yeah='W'    
elseif resultado==[1 1 0 0 0]
    yeah='X'    
elseif resultado==[1 1 0 0 1]
    yeah='Y'    
else 
    yeah='Z' 
end
assignin('base', 'yeah', yeah); 
set(handles.text1,'string',yeah)


% --- Executes on button press in LIMPIAR.
function LIMPIAR_Callback(hObject, eventdata, handles)
set(handles.text9,'string','');
set(handles.text1,'string','');
set(handles.edit1,'string','');
set(handles.text5,'string','-------');
set(handles.togglebutton1,'value',0)
set(handles.togglebutton2,'value',0)
set(handles.togglebutton3,'value',0)
set(handles.togglebutton4,'value',0)
set(handles.togglebutton5,'value',0)
set(handles.togglebutton6,'value',0)
set(handles.togglebutton7,'value',0)
set(handles.togglebutton8,'value',0)
set(handles.togglebutton9,'value',0)
set(handles.togglebutton10,'value',0)
set(handles.togglebutton11,'value',0)
set(handles.togglebutton12,'value',0)
set(handles.togglebutton13,'value',0)
set(handles.togglebutton14,'value',0)
set(handles.togglebutton15,'value',0)
set(handles.togglebutton16,'value',0)
set(handles.togglebutton17,'value',0)
set(handles.togglebutton18,'value',0)
set(handles.togglebutton19,'value',0)
set(handles.togglebutton20,'value',0)
set(handles.togglebutton21,'value',0)
set(handles.togglebutton22,'value',0)
set(handles.togglebutton23,'value',0)
set(handles.togglebutton24,'value',0)
set(handles.togglebutton25,'value',0)
set(handles.togglebutton26,'value',0)
set(handles.togglebutton27,'value',0)
set(handles.togglebutton28,'value',0)
set(handles.togglebutton29,'value',0)
set(handles.togglebutton30,'value',0)
set(handles.togglebutton31,'value',0)
set(handles.togglebutton32,'value',0)
set(handles.togglebutton33,'value',0)
set(handles.togglebutton34,'value',0)
set(handles.togglebutton35,'value',0)
set(handles.togglebutton36,'value',0)
set(handles.togglebutton37,'value',0)
set(handles.togglebutton38,'value',0)
set(handles.togglebutton39,'value',0)
set(handles.togglebutton40,'value',0)
set(handles.togglebutton41,'value',0)
set(handles.togglebutton42,'value',0)
set(handles.togglebutton43,'value',0)
set(handles.togglebutton44,'value',0)
set(handles.togglebutton45,'value',0)
set(handles.togglebutton46,'value',0)
set(handles.togglebutton47,'value',0)
set(handles.togglebutton48,'value',0)
set(handles.togglebutton49,'value',0)
set(handles.togglebutton50,'value',0)
set(handles.togglebutton51,'value',0)
set(handles.togglebutton52,'value',0)
set(handles.togglebutton53,'value',0)
set(handles.togglebutton54,'value',0)
set(handles.togglebutton55,'value',0)
set(handles.togglebutton56,'value',0)
set(handles.togglebutton57,'value',0)
set(handles.togglebutton58,'value',0)
set(handles.togglebutton59,'value',0)
set(handles.togglebutton60,'value',0)
set(handles.togglebutton61,'value',0)
set(handles.togglebutton62,'value',0)
set(handles.togglebutton63,'value',0)
set(handles.togglebutton64,'value',0)





% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
w= zeros(64,5)
b= zeros(1,5)
p=[]
t=[]
assignin('base', 'w', w);
assignin('base', 'b', b);
assignin('base', 'p', p);
assignin('base', 't', t);
set(handles.text9,'string','');
set(handles.text1,'string','');
set(handles.edit1,'string','');
set(handles.text5,'string','-------');
