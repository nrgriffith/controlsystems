s = tf('s');
G = 1000/(s*(s+5)*(s+20));
zeta = 0.187;

Gc = 7.58*(s+3.64)/(s+27.5);

Sys = feedback((G*Gc),1);
step(Sys)