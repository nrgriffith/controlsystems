clear
clc

s = tf('s');
G = 8/(s*(s^6-2*s^5-s^4+2*s^3+4*s^2-8*s-4));

sys_cl = feedback(G,1)

pole(sys_cl)
pzmap(sys_cl)