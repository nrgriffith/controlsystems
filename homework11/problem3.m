s = tf('s');
G = 2000000000/(s*(s+100)*(s+500)*(s+800));

bode(G)
grid