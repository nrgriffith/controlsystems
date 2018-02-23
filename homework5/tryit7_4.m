clear all
clc

% "Tryit 7.4" from page 358

syms K a b s
G = K/((s+a)*(s+b));
Kp = subs(G,s,0);
e=1/(1+Kp);
Sea=(a/e)*diff(e,a);
Sea=simplify(Sea);
'Sea'
pretty(Sea)