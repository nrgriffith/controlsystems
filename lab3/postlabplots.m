%%%%%% Put the K value here %%%%%%
K = 98;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Load file
file = strcat('data/k',num2str(K));
file = strcat(file,'.mat');
load(file)

% Offset x-axis (so it starts at 0 seconds)
offset = data_ang(1,1);
anglex = data_ang(:,1) - offset;
xcx = data_xc(:,1) - offset;
vmx = data_Vm(:,1) - offset;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Generate simulation data
constants
open_loop
closed_loop
[u,t]=gensig('square',10,20,0.1);
[simy, simt] = lsim(T,u,t);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plots
figure(1)
plot(anglex,data_ang(:,2)),ylabel('Angle (Radians)'),xlabel('Time (seconds)'),title(['Angle Variation (Gain K = ' num2str(K) ')'])

figure(2)
plot(simt,simy(:,2),'--k')

figure(3)
plot(xcx,data_xc(:,2)),ylabel('Position (millimeters)'),xlabel('Time (seconds)'),title(['Cart Position Variation (Gain K = ' num2str(K) ')'])

figure(4)
plot(simt,simy(:,1),'--k')

figure(5)
plot(vmx,data_Vm(:,2)),ylabel('Motor Voltage (volts)'),xlabel('Time (seconds)'),title(['Motor Voltage vs. Time (Gain K = ' num2str(K) ')'])
