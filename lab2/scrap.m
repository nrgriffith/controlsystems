

% change me
K = 15;
k = K;
t_r = 3;     %seconds, or less
t_s = 7.5;   %seconds, or less
zeta = 0.78; %or more, up to 1

omega_n = 4/(zeta*t_s);
omega_d = omega_n*sqrt(1-zeta*zeta);

% Constants
c1 = 10.8458;
c2 = -13.4583;
c3 = 1;
c4 = -4.0192;
c5 = -3.7792;

p1 = 21.6068 + 3.09722*k*c3 + 0.54638*k*c4;
p2 = -0.0012*k*c4 - 3.4161 + 0.5463*k*c2 + 3.0972*k*c1;
p3 = -21.0659*k*c3 - 42.8779*k*c4 - 0.0012*k*c2 + 0.5463*k*c5 - 146.9644;
p4 = -21.0659*k*c1 - 138.8722 - 42.8779*k*c2 - 0.0012*k*c5;
p5 = -42.8779*k*c5;

s = tf('s');

System = (0.5463*s^3 - 0.001183*s^2 - 42.88*s)/(s^5 + p1*s^4 + p3*s^2 + p4*s + p5)
pole(System)

D = s^5 + 21.608*s^4 - 3.4161*s^3 - 146.9644*s^2 - 138.8722*s;
N = 0.9012*s^4 + 26.2525*s^3 + 149.2205*s^2 + 348.5348*s + 162.0442;

%ltiview(RLSystemUnity)