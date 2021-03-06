clc
clear
syms s
disp("Part A")
H1 = (3*s+6)/(s^2+25);
y1 = ilaplace(H1)
G1 = tf([3 6],[1 0 25])

disp("Part B")
H2 = (12)/(3*s^2+24*s+45);
y2 = ilaplace(H2)
G2 = tf([12],[3 24 45])

disp("Part C")
H3 = (2*s+2)/(s^2+5*s+4);
pretty(simplify(H3))
y3 = ilaplace(H3)
G3 = tf([2 2],[1 5 4])

disp("Part D")
H4 = (2*s+2)/(s^2+5*s+4);
h4 = 1/(s^2+5*s+4)
y4 = ilaplace(h4)
G4 = tf([1 6 9],[1 4 13])

disp("Part E")
H5 = 1/(s^2+6*s+9);
pretty(simplify(H5))
y5 = ilaplace(H5)
G5 = tf([1],[1 6 9])

figure(1)
subplot(2,1,1);
pzmap(G1)
axis([-3 1 -6 6])
title('A: Pole/Zero Plot')
subplot(2,1,2)
step(G1)
axis([0 5 -1 1])
title('A: Step Response')

figure(2)
subplot(2,1,1);
pzmap(G2)
axis([-6 0 -1 1])
title('B: Pole/Zero Plot')
subplot(2,1,2)
step(G2)
title('B: Step Response')

figure(3)
subplot(2,1,1);
pzmap(G3)
axis([-5 0 -1 1])
title('C: Pole/Zero Plot')
subplot(2,1,2)
step(G3)
title('C: Step Response')

figure(4)
subplot(2,1,1);
pzmap(G4)
axis([-4 0 -5 5])
title('D: Pole/Zero Plot')
subplot(2,1,2)
step(G4)
title('D: Step Response')

figure(5)
subplot(2,1,1);
pzmap(G5)
axis([-4 0 -5 5])
title('E: Pole/Zero Plot')
subplot(2,1,2)
step(G5)
title('E: Step Response')