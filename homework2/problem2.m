%%%%%%%%%%%%%%%%%%%%
% Nichole Griffith %
% ECE:3600         %
% Homework #2      %
% Problem #2       %
%%%%%%%%%%%%%%%%%%%%

clear all
clc

syms t s F

B_1 = 2;
B_2 = 2;
B_3 = 2;
M_1 = 4;
M_2 = 4;
M_3 = 4;
K_1 = 6;
K_2 = 6;

A = [K_1+M_1*s^2+B_2*s -B_2*s 0; -B_2*s B_1*s+B_2*s+M_2*s^2+K_2 -K_2; 0 -K_2 K_2+M_3*s^2+B_3*s];
Ax_1 = [0 -B_2*s 0; F B_1*s+B_2*s+M_2*s^2+K_2 -K_2; 0 -K_2 K_2+M_3*s^2+B_3*s];
Ax_2 = [K_1+M_1*s^2+B_2*s 0 0; -B_2*s F -K_2; 0 0 K_2+M_3*s^2+B_3*s];
Ax_3 = [K_1+M_1*s^2+B_2*s -B_2*s 0; -B_2*s B_1*s+B_2*s+M_2*s^2+K_2 F; 0 -K_2 0];

X_1 = det(Ax_1)/det(A);
X_2 = det(Ax_2)/det(A);
X_3 = det(Ax_3)/det(A);

pretty(simplify(X_3/F))