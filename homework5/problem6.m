clear
clc
syms K1 K2 S

% Open loop transfer function
G1 = (S+K1)/(S+2-K2);
G2 = 2/(S^2-1);
G = G1*G2;

disp('Symbolic open loop transfer function:')
pretty(simplify(G/(1+G)))

k1 = 1;
k2 = 2;
s = tf('s');
H = 2*(s+k1)/(s^3+(2-k2)*s^2+s+(2*k1+k2-2));
