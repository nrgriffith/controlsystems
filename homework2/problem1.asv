%%%%%%%%%%%%%%%%%%%%
% Nichole Griffith %
% ECE:3600         %
% Homework #2      %
% Problem #1       %
%%%%%%%%%%%%%%%%%%%%

clear all
clc

syms s F

% Constants defined by problem statement
k = 1;        % N/m
B = 1;        % N*s/m
M_1 = 1;      % kg
M_2 = 1;      % kg

A = [(k+B*s+M_1*s^2) (-k-B*s); (-k-B*s) (k+B*s+M_2*s^2)]; % Coefficient Matrix
Ax_1 = [(F) (-k-B*s); (0) (k+B*s+M_2*s^2)];               % x_1 Matrix
Ax_2 = [(k+B*s+M_1*s^2) (F); (-k-B*s) (0)];               % x_2 Matrix

X_1 = det(Ax_1)/det(A);
%disp('X_1(s) = ')
%pretty(X_1)

X_2 = det(Ax_2)/det(A);
%disp('X_2(s) = ')
%pretty(X_2)

disp('Transfer Function G(s)=')
pretty(simplify(X_2/F))