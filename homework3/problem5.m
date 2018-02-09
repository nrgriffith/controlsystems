clear
clc
syms S
w_n = 3.383207256;
zeta = 0.5911550338;
g = tf([6],[1 7 16])
pzmap(g)