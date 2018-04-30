load data/k30.mat

anglex = data_ang(:,1) - 20;
vmx = data_Vm(:,1) - 20;
xcx = data_xc(:,1) - 20;

figure(1)
subplot(3,1,1);
plot(anglex,data_ang(:,2))
ylabel('Radian Degrees')
title('Gain (K = 30)')

subplot(3,1,2);
plot(vmx,data_Vm(:,2))
ylabel('Command Volatage (Volts)')

subplot(3,1,3);
plot(xcx,data_xc(:,2))
ylabel('Position (mm)')
xlabel('Time (seconds)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

plot(anglex,data_ang(:,2)),ylabel('Angle (Radians)'),xlabel('Time (seconds)'),title('Angle Variation (Gain K = 30)')