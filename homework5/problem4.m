clear
clc
syms Konst S

%s = tf('s');

% Open loop transfer function
%G = (K*(s+7))/(s*(s^2+2*s+35));
Gsym = (Konst)/(S*(S+4)*(S+8)*(S+10));

disp('Symbolic open loop transfer function:')
pretty(simplify(Gsym/(1+Gsym)))

