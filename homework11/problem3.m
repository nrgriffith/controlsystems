s = tf('s');
G = 2000000000/(s*(s+100)*(s+500)*(s+800));
pm = 57;
wg = 45;

zeta = pm/100;
wn = wg/(sqrt(sqrt(4*zeta^4 + 1) -2*zeta^2));

figure(1)
bode(G)
grid

G_ClosedLoop = feedback(G,1);

G_approx = wn^2/(s*(s+2*zeta*wn));
G_approx_ClosedLoop = feedback(G_approx,1);

figure(2)
subplot(1,2,1)
step(G_ClosedLoop)
title('Step Response for CL G(s)')
subplot(1,2,2)
step(G_approx_ClosedLoop)
title('Step Response for 2nd Order Approx. CL G(s)')