t_r = 3;     %seconds, or less
t_s = 7.5;   %seconds, or less
zeta_min = 0.78; %or more, up to 1
zeta_max = 0.99;
zeta_add = 1;
zeta = [zeta_min zeta_max zeta_add];

omega_n = 4/(zeta_min*t_s);
omega_d = omega_n*sqrt(1-zeta_min*zeta_min);

wn = 0;

s = tf('s');

D = s^4 - 21.61*s^3 -3.416*s^2 -1478*s -138.9;
N = 3.097*s^2 - 21.07;

RLSystem = N/D;

figure(1)
rlocus(RLSystem)
sgrid(zeta,0)
[Kk,poles]=rlocfind(RLSystem);
Kk
%RLSystemUnity = feedback(Kk*RLSystem,1);
%step(RLSystemUnity)