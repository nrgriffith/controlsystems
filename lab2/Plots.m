close all
clear all

load lab2data-gain16.mat
d_ssw16 = data_ssw;
d_Vm16 = data_Vm;
d_xc16 = data_xc;

figure(1)
subplot(3,1,1);
plot(d_ssw16(:,1),d_ssw16(:,2))
ylabel('Radian Degrees')
title('Gain (K = 16)')

subplot(3,1,2);
plot(d_Vm16(:,1),d_Vm16(:,2))
ylabel('Volts')

subplot(3,1,3);
plot(d_xc16(:,1),d_xc16(:,2))
ylabel('Distance (mm)')
xlabel('Time (seconds)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load datalab2.mat
d_ssw25 = data_ssw;
d_Vm25 = data_Vm;
d_xc25 = data_xc;

figure(2)
subplot(3,1,1);
plot(d_ssw25(:,1),d_ssw25(:,2))
ylabel('Radian Degrees')
title('Gain (K = 25)')

subplot(3,1,2);
plot(d_Vm25(:,1),d_Vm25(:,2))
ylabel('Volts')

subplot(3,1,3);
plot(d_xc25(:,1),d_xc25(:,2))
ylabel('Distance (mm)')
xlabel('Time (seconds)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load lab2data-gain29.mat
d_ssw29 = data_ssw;
d_Vm29 = data_Vm;
d_xc29 = data_xc;

figure(3)
subplot(3,1,1);
plot(d_ssw29(:,1),d_ssw29(:,2))
ylabel('Radian Degrees')
title('Gain (K = 29)')

subplot(3,1,2);
plot(d_Vm29(:,1),d_Vm29(:,2))
ylabel('Volts')

subplot(3,1,3);
plot(d_xc29(:,1),d_xc29(:,2))
ylabel('Distance (mm)')
xlabel('Time (seconds)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load 'sim29.mat'
d_sswS29 = ScopeData.signals.values;

figure(4)
plot(d_ssw29(:,1),d_ssw29(:,2),d_ssw29(:,1),d_sswS29)
ylabel('Radian Degrees')
xlabel('Time (seconds)')
title('Experimental and Simulated Angular Displacement for Gain K = 29')

clear data_ssw data_Vm data_xc

