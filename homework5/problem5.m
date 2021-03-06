clear
clc
syms Konst S

%s = tf('s');

% Open loop transfer function
%G = (K*(s+7))/(s*(s^2+2*s+35));
Hsym = -195/200;
Gsym = 200*(S+4)/((S+3)*(S+7));

disp('Symbolic open loop transfer function:')
pretty(simplify(Gsym/(1+Hsym*Gsym)))

