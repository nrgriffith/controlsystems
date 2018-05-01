% Homework 12
% Problem 1 (Nise 11.4)

%%%%%%%%%%%%%%%%%%% Get Bode plot %%%%%%%%%%%%%%%%%%%

K = 2.42;

s = tf('s');

G = (s+10)*(s+15)/(s*(s+2)*(s+5)*(s+20));

figure(1)
bode(G)
grid

Gc = K*G;
Gc = feedback(Gc,1);

figure(2)
step(Gc)
title(['Compensated System Step Response (K =' num2str(K) ')'])

