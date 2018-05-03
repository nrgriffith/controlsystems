% Homework 12
% Problem 2 (Nise 11.7)

%%%%%%%%%%%%%%%%% Solved Parameters %%%%%%%%%%%%%%%%%
Zc = 0.3;
Pc = 0.0045;
Kc = Pc/Zc*5;

%%%%%%%%%%%%%%%%% Given  Parameters %%%%%%%%%%%%%%%%%
overshoot = 0.15;
zeta = -1*log(.15)/sqrt(3.1415926^2+(log(.15))^2);
s = tf('s');

G = 140/((s+1)*(s+5)*(s+10));

% rlocus(G)
% zgrid(zeta,0)

%%%%%%%%%%%%%%%%%%% Get Bode plot %%%%%%%%%%%%%%%%%%%
figure(1)
bode(G)
grid

Gc = Kc*(s+Zc)/(s+Pc);
Sys = feedback((Gc*G),1);

figure(2)
step(Sys)
title(['Compensated System Step Response'])