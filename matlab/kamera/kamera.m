function varargout = kamera(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kamera_OpeningFcn, ...
                   'gui_OutputFcn',  @kamera_OutputFcn, ...
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
function kamera_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);


function varargout = kamera_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton2_Callback(hObject, eventdata, handles)

    vid = videoinput('winvideo',2,'YUY2_640x480')
    vid.FramesPerTrigger = 1;
    vid.ReturnedColorspace = 'rgb';
    triggerconfig(vid, 'manual');
    vidRes = get(vid, 'VideoResolution');
    imWidth = vidRes(1);
    imHeight = vidRes(2);
    nBands = get(vid, 'NumberOfBands');
    hImage = image(zeros(imHeight, imWidth, nBands), 'parent', handles.axes1);
    preview(vid, hImage);
