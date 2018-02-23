clear
clc

K = 13;

s = tf('s');
G = (K*(s+7))/(s*(s^2+2*s+35));
sys_cl = feedback(G,1);
[y,t] = step(sys_cl);
u = 100.*ones(size(t));

figure(1)
subplot(2,2,1)
plot(t,y,'b',t,u,'g')
axis([0,50,-10,110])
xlabel('Time(secs)')
ylabel('Amplitude')
title('r(t) = 100u(t)')

%clear t u
t = 0:0.1:10000;
u = 100 + 1000.*t;
[y,t] = lsim(sys_cl,u,t);
subplot(2,2,2)
plot(t,y,'b',t,u,'g')
axis([9363.7,9363.8,9.3632e6,9.3641e6])
xlabel('Time(secs)')
ylabel('Amplitude')
title('r(t) = [100 + 1000t]u(t)')

%clear t u
t = 0:0.1:100000;
u = t.*t + 1000*t;
[y,x] = lsim(sys_cl,u,t);
subplot(2,2,3)
plot(t,y,'b',t,u,'g')
axis([9.92488e4,9.92495e4,9.9495956e9,9.9495976e9])
xlabel('Time(secs)')
ylabel('Amplitude')
title('r(t) = [100t + t^2]u(t)')