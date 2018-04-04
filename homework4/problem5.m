clc
clear all

% For Part B, I guessed-and-checked until I got
% k1 = 0.212 to meet one constraint
% For Part C, k1 = 0.2774
k1 = 0.2774;

% Set k2 = 0 for Part B
% Set k2 = 0.06 for Part C
k2 = 0.0600;
omega_n = sqrt(k1*50);
zeta = (1+50*k2)/(omega_n*2);

H = tf([omega_n^2],[1 (2*omega_n*zeta) omega_n^2])
ltiview(H)