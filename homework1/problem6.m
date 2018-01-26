%%%%%%%%%%%%%%%%%%%%
% Nichole Griffith %
% ECE:3600         %
% Homework #1      %
% Problem #6       %
%%%%%%%%%%%%%%%%%%%%

% Clear screen and variables
clear all
clc

% Define System 1
A_1 = [0 1; -2 -3];
B_1 = [0; 1];
C_1 = [2 0];
sys_1 = ss(A_1,B_1,C_1,0);     % state-space representation
tf_1 = tf(sys_1);              % transfer function

% Define System 2
A_2 = [0 1 0; 0 0 1; -6 -11 -6];
B_2 = [0; 0; 1];
C_2 = [6 2 0];
sys_2 = ss(A_2,B_2,C_2,0);     % state-space representation
tf_2 = tf(sys_2);              % transfer function
tf_new_2 = minreal(tf(sys_2)); % tf after pole-zero cancellation

disp('Transfer Function for First System:')
tf_1

disp('Transfer Function for Second System:')
tf_2

disp('Transfer Function for Second System After Pole-Zero Cancellation:')
tf_new_2