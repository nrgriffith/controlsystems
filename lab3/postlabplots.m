K = 23;

file = strcat('data/k',num2str(K));
file = strcat(file,'.mat');

load(file)

anglex = data_ang(:,1);
vmx = data_Vm(:,1);
xcx = data_xc(:,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

constants
open_loop
closed_loop

% Generate Square Wave
[u,t]=gensig('square',10,20,0.1);

% Simulate
[simy, simt] = lsim(T,u,t);

figure(1)
plot(anglex,data_ang(:,2)),ylabel('Angle (Radians)'),xlabel('Time (seconds)'),title(['Angle Variation (Gain K = ' num2str(K) ')'])

figure(2)
plot(simt,simy(:,2),'--k')