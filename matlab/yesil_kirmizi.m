function varargout = untitled_3(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_3_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_3_OutputFcn, ...
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


function untitled_3_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);


function varargout = untitled_3_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


function pushbutton1_Callback(hObject, eventdata, handles)
    dio = digitalio('nidaq', 'Dev1')
    addline(dio, 3, 'Out')
    putvalue(dio, 1)
    delete (dio);
    clear dio;


function pushbutton2_Callback(hObject, eventdata, handles)
    dio = digitalio('nidaq', 'Dev1')
    addline(dio, 0, 'Out')
    putvalue(dio, 1)
    delete (dio);
    clear dio;


function pushbutton4_Callback(hObject, eventdata, handles)
    dio = digitalio('nidaq', 'Dev1')
    addline(dio, 0, 'Out')
    putvalue(dio, 0)
    delete (dio);
    clear dio;


function pushbutton5_Callback(hObject, eventdata, handles)
dio = digitalio('nidaq', 'Dev1')
    addline(dio, 0:3,             'Out')
    putvalue(dio,[1 0 0 1])
    delete (dio);
    clear dio;