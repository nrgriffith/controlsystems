parameters
constants
open_loop

% Calculations
s = tf('s');
zeta = -1*log(OS)/sqrt(3.1415926^2 + (log(OS))^2);
w_n = 4/(t_r*zeta);
sigma = w_n*zeta;
w_d = w_n*sqrt(1-zeta^2);

figure(1)
rlocus(Gp)
sgrid(zeta,0)
[K,poles]=rlocfind(Gp);
K