% Close loop transfer functions
open_loop
G = K*k1*Gp;
Gf = Ga/Gp*(k2+k4*s)/k1 + k3*s/k1 + 1;
T = [feedback(G,Gf); feedback(G,Gf)*Ga/Gp];