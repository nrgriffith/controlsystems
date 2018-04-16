s = tf('s');
G = 250/(s*(s+2)*(s+4));
figure(1)
subplot(2,1,1)
bode(G)
grid
subplot(2,1,2)
nyquist(G)
ltiview(G)