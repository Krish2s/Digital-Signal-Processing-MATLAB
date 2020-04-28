function varargout = dftsample(varargin)
% DFTSAMPLE MATLAB code for dftsample.fig
%      DFTSAMPLE, by itself, creates a new DFTSAMPLE or raises the existing
%      singleton*.
%
%      H = DFTSAMPLE returns the handle to a new DFTSAMPLE or the handle to
%      the existing singleton*.
%
%      DFTSAMPLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DFTSAMPLE.M with the given input arguments.
%
%      DFTSAMPLE('Property','Value',...) creates a new DFTSAMPLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dftsample_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dftsample_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dftsample

% Last Modified by GUIDE v2.5 17-Jan-2020 11:51:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dftsample_OpeningFcn, ...
                   'gui_OutputFcn',  @dftsample_OutputFcn, ...
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


% --- Executes just before dftsample is made visible.
function dftsample_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dftsample (see VARARGIN)

% Choose default command line output for dftsample
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dftsample wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dftsample_OutputFcn(hObject, eventdata, handles) 
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
disp('Krushna Garkal TETA10');
disp('Exp.1 :Implementation of DFT');
disp('_________________________________________');
%N=input('Enter the size of DFT:');
%x=input('Enter the samples:');
N=4;
x=[1 2];
L=length (x);
if N>L
    x=[x zeros(1,(N-L))];
elseif N<L
    x=[x(1:N)];
end
n=[0: 1 : N-1];
k=[0: 1 : N-1];
w=exp(-j*2*pi/N);
nk=n'*k
W=w.^nk
disp ('DFT samples');
X=x*W
subplot(211);
stem (n,x);
title('Discrete Samples ');
xlabel('x(n)');
ylabel('n---->');
subplot(212);
stem (k,X);
title('DFT output ');
xlabel('k--->');
ylabel('x(k)');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
disp('Krushna Garkal TETA10');
disp('Exp.1 :Implementation of DFT');
disp('_________________________________________');
N=4;
X=[10 -2+2j -2 -2-2j];
n=[0: 1 : N-1];
k=[0: 1 : N-1];
w=exp(j*2*pi/N);
nk=n'*k
W=w.^nk
disp ('DFT samples');
x=(1/N)*(X*W)
subplot(211);
stem (n,X);
title('Discrete Samples ');
xlabel('x(n)');
ylabel('n---->');
subplot(212);
stem (k,x);
title('DFT output ');
xlabel('k--->');
ylabel('x(k)');
