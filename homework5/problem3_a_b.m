clear
clc
syms Konst S

K = 13;

s = tf('s');

% Open loop transfer function
G = (K*(s+7))/(s*(s^2+2*s+35));
Gsym = (Konst*(S+7))/(S*(S^2+2*S+35));

disp('Symbolic closed loop transfer function:')
pretty(simplify(Gsym/(1+Gsym)))

% Close loop system
sys_cl = feedback(G,1)

% Check stability
pole(sys_cl)

% Calculate the error constants
disp('Error Constants')
Kp = dcgain(G)
Kv = dcgain(s*G)
Ka = dcgain(s*s*G)

disp('Steady-state error for each input type')
e_ss_step = 1/(1+Kp)
e_ss_ramp = 1/Kv
e_ss_parabola = 1/Ka

[y,t] = step(sys_cl);
u = ones(size(t));

figure(1)
subplot(2,2,1)
plot(t,y,'b',t,u,'g')
axis([0,48,0,2])
xlabel('Time(secs)')
ylabel('Amplitude')
title('Step')

clear t u
t = 0:0.1:50;
u = t;
[y,t] = lsim(sys_cl,u,t);
subplot(2,2,2)
plot(t,y,'b',t,u,'g')
xlabel('Time(secs)')
ylabel('Amplitude')
title('Ramp')

clear t u
t = 0:0.1:20;
u = 0.5*t.*t;
[y,t] = lsim(sys_cl,u,t);
subplot(2,2,3)
plot(t,y,'b',t,u,'g')
xlabel('Time(secs)')
ylabel('Amplitude')
title('Parabolic')
