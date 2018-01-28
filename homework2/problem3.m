%%%%%%%%%%%%%%%%%%%%
% Nichole Griffith %
% ECE:3600         %
% Homework #2      %
% Problem #3       %
%%%%%%%%%%%%%%%%%%%%

clear all
clc

syms s T

% Constants defined by problem statement
J = 1;          % kg*m^2
K = 1;          % N*m/rad
D_1 = 1;        % N*m*s/rad
D_2 = 1;        % N*m*s/rad
D_3 = 1;        % N*m*s/rad

A = [J*s^2+D_1*s+D_2*s+K -K-D_2*s; -K-D_2*s K+D_2*s+D_3*s];
Atheta_1 = [T 0; -K-D_2*s K+D_2*s+D_3*s];
Atheta_2 = [J*s^2+D_1*s+D_2*s+K -K-D_2*s; T 0];

Theta_1 = det(Atheta_1)/det(A);
Theta_2 = det(Atheta_2)/det(A);

disp('Transfer Function G(s)=')
pretty(simplify(Theta_2/T))