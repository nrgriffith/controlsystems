% K (change)
K = 45.7;

% Given parameters
OS = 0.07;
t_s = 2.5; % seconds
t_r = 1.2; % seconds

% Given constants
k1 = 6.8298;
k2 = -8.9617;
k3 = 3.7447;
k4 = 1;

% Calculations
s = tf('s');
zeta = -1*log(OS)/sqrt(3.1415926^2 + (log(OS))^2);
w_n = 4/(t_r*zeta);
sigma = w_n*zeta;
w_d = w_n*sqrt(1-zeta^2);

% Open loop transfer functions
Ga = tf([-3.526 0.007218],[1 11.73 26.96 263.3]);
Gp = tf([1.53 0.1114 34.59],[1 11.73 26.96 263.3 0]);

% Closed loop Position Transfer Function
Gp_prime = series(K*k1,Gp);
Hp = parallel((((k2+s*k4)/k1)*Ga/Gp),(s*k3/k1));
Hp = parallel(Hp,1);
PositionSys = feedback(Gp_prime,Hp)
%PositionSys = PositionSys + 1;

% Closed loop Angle Transfer Function
Ga_prime = series(K*k1*Gp,Ga/Gp);
Ha = parallel(((k3*s/k1 + 1)*Gp/Ga),(k2+s*k4)/k1);
AngleSys = feedback(Ga_prime,Ha);

figure(1)
subplot(2,2,1)
pzmap(PositionSys)
title('Position')
subplot(2,2,2)
step(PositionSys)
title('Position Step Response')
subplot(2,2,3)
pzmap(AngleSys)
title('Angle')
subplot(2,2,4)
step(AngleSys)
title('Angle Step Response')

figure(2)
rlocus(Gp)
sgrid(zeta,0)
%[K,poles]=rlocfind(Gp);