% Homework 12
% Problem 2 (Nise 11.7)

%%%%%%%%%%%%%%%%%%% Get Bode plot %%%%%%%%%%%%%%%%%%%

K = 1;

s = tf('s');

G = 1/((s+1)*(s+5)*(s+10));

figure(1)
bode(G)
grid

% Gc = K*G;
% Gc = feedback(Gc,1);

% figure(2)
% step(Gc)
% title(['Compensated System Step Response (K =' num2str(K) ')'])