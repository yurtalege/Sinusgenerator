% Draw a sinusoidal signal with given parameters
% as y(t) = A*sin(2*pi*f*t)

% Start with preparing screen 
clc;        % clear the command window
clear all;  % clear all variables
close all;  %close all active figures (windows)

% Define variables, A,f,t and signal duration
A = 1;      % Amplitude of the signal 
f = 1;      % frequency of the signal in Hz

T = 1e-2;   % Sampling period (1e-2 = 1/100 = 0.01)
Sig_dur = 1;% Signal duration in which signal is drawn (in sec)

% Define time axis
t=0:T:Sig_dur; % Define time axis starting from 0 to Signal_dur with T step size

% Calculate the sine signal with defined parameters;
y_sin = A*sin(2*pi*f*t);

%Show this signal on screen
figure;     % open new figure window
plot(t,y_sin);  % Draw "y_sin" with respect to the "t"
grid on;        % we can add grids on the active figure or not "grid off"

% Calculate another cosine signal with same parameters;
y_cos = A*cos(2*pi*f*t);

%Show this signal on screen
figure;     % open new figure window
plot(t,y_cos);  % Draw "y_sin" with respect to the "t"
grid on;        % we can add grids on the active figure or not "grid off"

% We can draw these two signals on same figure using "hold on" command
% We generated the signals, hence we will only show them

figure;         % open new figure window
plot(t,y_sin);  % Draw "y_sin" with respect to the "t"
hold on;        % "hold" the active figure "on" to plot inside
plot(t,y_cos,'r-.');  % Draw "y_sin" with respect to the "t" using red color and "dash dot line"
grid on;        % we can add grids on the active figure or not "grid off"
