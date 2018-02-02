%%%%%%%%%%%%%%%%%%%%
% Nichole Griffith %
% ECE:3600         %
% Homework #2      %
% Problem #4       %
%%%%%%%%%%%%%%%%%%%%

clear all
clc

syms s T

% Constants defined by problem statement
N_1 = 26;        % Teeth
N_2 = 110;       % Teeth
N_3 = 23;        % Teeth
N_4 = 120;       % Teeth
K = 2;           % N*m/rad
D = 26;          % N*m*s/rad

% Equivalent terms
T_eq = (N_2/N_1)*T;
D_eq = D*(N_3/N_4)^2;

A = [(K) (-K) (0); (-K) (K+D_eq*s) (0); (0) (-1) (N_4/N_3)];
Atheta_2 = [(T_eq) (-K) (0); (0) (K+D_eq*s) (0); (0) (-1) (N_4/N_3)];
Atheta_3 = [(K) (T_eq) (0); (-K) (0) (0); (0) (0) (N_4/N_3)];
Atheta_4 = [(K) (-K) (T_eq); (-K) (K+D_eq*s) (0); (0) (-1) (0)];

Theta_4 = det(Atheta_4)/det(A);

disp('Transfer Function G(s)=')
pretty(simplify(Theta_4/T))