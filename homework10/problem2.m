s = tf('s');
K = 1;
G = 100*(s+5)/(s*(s+3)*(s^2+4));
n = 100*(s+5);
d = (s*(s+3)*(s^2+4));
figure(1)
subplot(2,2,1)
nyquist(n,d,{.1,1.9})
title('>> nyquist(n,d,[.1,1.9])');
subplot(2,2,2)
nyquist(n,d,{2.1,1e5})
title('>> nyquist(n,d,[2.1,1e5])');
subplot(2,2,3)
nyquist(G)
title('Full Nyquist Plot');
subplot(2,2,4)
nyqlog(G)
title('>> nyqlog(G)');