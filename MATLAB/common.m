function varargout = common(varargin)
% COMMON MATLAB code for common.fig
%      COMMON, by itself, creates a new COMMON or raises the existing
%      singleton*.
%
%      H = COMMON returns the handle to a new COMMON or the handle to
%      the existing singleton*.
%
%      COMMON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMMON.M with the given input arguments.
%
%      COMMON('Property','Value',...) creates a new COMMON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before common_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to common_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help common

% Last Modified by GUIDE v2.5 03-Apr-2016 23:29:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @common_OpeningFcn, ...
                   'gui_OutputFcn',  @common_OutputFcn, ...
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


% --- Executes just before common is made visible.
function common_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to common (see VARARGIN)

% Choose default command line output for common
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes common wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = common_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in sample.
function sample_Callback(~, ~, ~)
untitled1;
% hObject    handle to sample (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in demo.
function demo_Callback(~, ~, ~)
Demo;
% hObject    handle to demo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
