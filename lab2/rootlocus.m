t_r = 3;     %seconds, or less
t_s = 7.5;   %seconds, or less
zeta_min = 0.78; %or more, up to 1
zeta_max = 0.99;
zeta_add = 1;
zeta = [zeta_min zeta_max zeta_add];

omega_n = 4/(zeta_min*t_s);
omega_d = omega_n*sqrt(1-zeta_min*zeta_min);

s = tf('s');

D = s^5 + 21.608*s^4 - 3.4161*s^3 - 146.9644*s^2 - 138.8722*s;
N = 0.9012*s^4 + 26.2525*s^3 + 149.2205*s^2 + 348.5348*s + 162.0442;

RLSystem = N/D;

figure(1)
%rlocus(RLSystem)
%sgrid(zeta,0)
%[Kk,poles]=rlocfind(RLSystem);
Kk = 28.1
RLSystemUnity = feedback(Kk*RLSystem,1);
step(RLSystemUnity)
