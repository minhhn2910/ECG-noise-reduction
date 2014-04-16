

function varargout = pulse(varargin)
global N_period n_point t_width t_delay box_width box_delay mix_signal result
% PULSE MATLAB code for pulse.fig
%      PULSE, by itself, creates a new PULSE or raises the existing
%      singleton*.
%
%      H = PULSE returns the handle to a new PULSE or the handle to
%      the existing singleton*.
%
%      PULSE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PULSE.M with the given input arguments.
%
%      PULSE('Property','Value',...) creates a new PULSE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pulse_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pulse_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pulse

% Last Modified by GUIDE v2.5 15-May-2012 11:49:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pulse_OpeningFcn, ...
                   'gui_OutputFcn',  @pulse_OutputFcn, ...
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


% --- Executes just before pulse is made visible.
function pulse_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pulse (see VARARGIN)

% Choose default command line output for pulse
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes pulse wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pulse_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function N_period_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay
% hObject    handle to N_period (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_period as text
%        str2double(get(hObject,'String')) returns contents of N_period as a double
%check input 
N_period = str2num(get(hObject,'string'));
if isnan(N_period)
  errordlg('You must enter a numeric value','Bad Input','modal')
  uicontrol(hObject)
	return
end
% end check


% --- Executes during object creation, after setting all properties.
function N_period_CreateFcn(hObject, eventdata, handles)

% hObject    handle to N_period (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function n_point_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay
% hObject    handle to n_point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_point as text
%        str2double(get(hObject,'String')) returns contents of n_point as a double

%check input 
n_point= str2num(get(hObject,'string'));
if isnan(n_point)
  errordlg('You must enter a numeric value','Bad Input','modal')
  uicontrol(hObject)
	return
end
% end check

% --- Executes during object creation, after setting all properties.
function n_point_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_width_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay
% hObject    handle to t_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_width as text
%        str2double(get(hObject,'String')) returns contents of t_width as a double
%check input 
t_width= str2double(get(hObject,'string'));
if isnan(t_width)
  errordlg('You must enter a numeric value','Bad Input','modal')
  uicontrol(hObject)
	return
end
% end check


% --- Executes during object creation, after setting all properties.
function t_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_delay_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay
% hObject    handle to t_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_delay as text
%        str2double(get(hObject,'String')) returns contents of t_delay as a double
%check input 
t_delay= str2double(get(hObject,'string'));
if isnan(t_delay)
  errordlg('You must enter a numeric value','Bad Input','modal')
  uicontrol(hObject)
	return
end
% end check

% --- Executes during object creation, after setting all properties.
function t_delay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_width_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay
% hObject    handle to box_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_width as text
%        str2double(get(hObject,'String')) returns contents of box_width as a double
%check input 
box_width= str2double(get(hObject,'string'));
if isnan(box_width)
  errordlg('You must enter a numeric value','Bad Input','modal')
  uicontrol(hObject)
	return
end
% end check

% --- Executes during object creation, after setting all properties.
function box_width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_delay_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay
% hObject    handle to box_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_delay as text
%        str2double(get(hObject,'String')) returns contents of box_delay as a double
%check input 
box_delay= str2double(get(hObject,'string'));
if isnan(box_delay)
  errordlg('You must enter a numeric value','Bad Input','modal')
  uicontrol(hObject)
	return
end
% end check

% --- Executes during object creation, after setting all properties.
function box_delay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in gen_signal.
function gen_signal_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay origin_signal mix_signal result
% hObject    handle to gen_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origin_signal = gen_pul(N_period,n_point,t_delay,t_width);
h=findobj('Type','axes','Tag','a1');
axes(h);
cla(h);
set(gca,'NextPlot','add');
grid on;
plot(origin_signal(1,:))

% --- Executes on button press in mix_noise.
function mix_noise_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay origin_signal mix_signal result amp power_signal
% hObject    handle to mix_noise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mix_signal = make_noise(origin_signal,amp);
h1 = findobj('Tag','noiseSNR');
power_signal = sum(sum(origin_signal(1,:).^2));
power_noise = sum(sum((mix_signal(1,:) - origin_signal(1,:)).^2));
snr = 10*log10(power_signal/power_noise);
s1 =  sprintf('%f', snr);
text_value = strcat(s1,' dB');
set(h1,'String',text_value);


h=findobj('Type','axes','Tag','a2');
axes(h);
cla(h);
set(gca,'NextPlot','add');
grid on;
p1 = plot(mix_signal(1,:));
set(p1,'Color','blue')
p2 = plot(origin_signal(1,:));
set(p2,'Color','red')

% --- Executes on button press in detect_signal.
function detect_signal_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay origin_signal mix_signal result power_signal
% hObject    handle to detect_signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%for N/100
result100 = detect_signal(mix_signal,box_delay,box_width,N_period/100);

h_100 = findobj('Tag','n100');

power_noise100 = sum(sum((result100(1,:) - origin_signal(1,:)).^2));
snr100 = 10*log10(power_signal/power_noise100);

s100 =  sprintf('%f', snr100);
text_value100 = strcat(s100,' dB');
set(h_100,'String',text_value100);

h100=findobj('Type','axes','Tag','a4');
axes(h100);
cla(h100);
set(gca,'NextPlot','add');
grid on;
plot(result100(1,:))

%for N/10
result10 = detect_signal(mix_signal,box_delay,box_width,N_period/10);

h_10 = findobj('Tag','n10');
power_noise10 = sum(sum((result10(1,:) - origin_signal(1,:)).^2));
snr10 = 10*log10(power_signal/power_noise10);
s10 =  sprintf('%f', snr10);
text_value10 = strcat(s10,' dB');
set(h_10,'String',text_value10);

h10=findobj('Type','axes','Tag','a5');
axes(h10);
cla(h10);
set(gca,'NextPlot','add');
grid on;
plot(result10(1,:))

%for N

result = detect_signal(mix_signal,box_delay,box_width,N_period);

h1 = findobj('Tag','resultSNR');
power_noise = sum(sum((result(1,:) - origin_signal(1,:)).^2));

snr = 10*log10(power_signal/power_noise);
s1 =  sprintf('%f', snr);
text_value = strcat(s1,' dB');
set(h1,'String',text_value);

h=findobj('Type','axes','Tag','a3');
axes(h);
cla(h);
set(gca,'NextPlot','add');
grid on;
plot(result(1,:))



function noise_amp_Callback(hObject, eventdata, handles)
global N_period n_point t_width t_delay box_width box_delay origin_signal mix_signal result amp
% hObject    handle to noise_amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noise_amp as text
%        str2double(get(hObject,'String')) returns contents of noise_amp as a double
amp = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function noise_amp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noise_amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
