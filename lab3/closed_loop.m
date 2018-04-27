% Close loop transfer functions
s = tf('s');
open_loop
G = k1*Gp;
Gf = Ga/Gp*(k2+k4*s)/k1 + k3*s/k1 + 1;
T = [feedback(K*G,Gf); feedback(K*G,Gf)*Ga/Gp];