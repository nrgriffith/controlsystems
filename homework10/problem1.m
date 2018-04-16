s = tf('s');
K = 1;
G = 50/(s*(s+3)*(s+6));
figure(1)
subplot(2,2,1)
bode(G)
title('Bode Plot for G');
grid
subplot(2,2,2)
nyqlog(G)
title('Nyquist Plot for G');
subplot(2,2,3)
K = 3.24;
Stable = K*G;
nyquist(Stable)
title('Nyquist Plot for G with K = 3.24');
subplot(2,2,4)
K = 3.25;
Unstable = K*G;
nyquist(Unstable)
title('Nyquist Plot for G with K = 3.25');
