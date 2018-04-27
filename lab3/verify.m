closed_loop
figure(2)
subplot(1,2,1)
step(T(1))
title(['Position Step Response (K = ' num2str(K) ')'])
subplot(1,2,2)
step(T(2))
title(['Angle Step Response (K = ' num2str(K) ')'])