%%%%%%%%%%%%%%%%%%%%
% Nichole Griffith %
% ECE:3600         %
% Homework #6      %
% Problem #1       %
%%%%%%%%%%%%%%%%%%%%

clear
clc

% For system:
%         D(s)  |
%              +v
% R(s)->?->[A]->?->[B]->?->Y(s)
%      -^               |
%       |_______________|

s = tf('s');
syms a b c d ee f
A = (s+1)*(s+2)/(s^2);
B = (s+3)/s;

% Get error unity-feedback transfer function
% [i.e. R(s) = 0; D(s) = 0;]

E_tf_unity = A*B;
disp('Error unity-feedback TF')
zpk(E_tf_unity)
disp('Error constants')
e_Kp = dcgain(E_tf_unity)
e_Kv = dcgain(s*E_tf_unity)
e_Ka = dcgain(s*s*E_tf_unity)
e_Kj = dcgain(s*s*s*E_tf_unity) % third derivative of position is called a "jerk", apparently

% Get disturbance unity-feedforward transfer function
% [i.e. R(s) = 0; E(s) = 0;]
%D_tf = A/(1-A*B);
%D_tf_unity = feedback(1,D_tf);
D_tf_unity = A+(1/B)-1;
disp('Disturbance unity-feedforward TF')
zpk(D_tf_unity)
d_Kp = dcgain(D_tf_unity)
d_Kv = dcgain(s*D_tf_unity)
d_Ka = dcgain(s*s*D_tf_unity)