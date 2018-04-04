clear

%k = 1;
%numerator = [0.5463 -0.001183 -42.88 0];
%P = [1 (21.6068+3.09772*k*c3 + 0.54638*k*c4) (-0.0012*k*c4 - 3.4161 + 0.5463*k*c2 + 3.0972*k*c1) (-21.0659*k*c3 - 42.8779*k*c4 - 0.0012*k*c2 + 0.5463*k*c5 - 146.9644) (-21.0659*k*c1 - 138.8722 - 42.8779*k*c2 - 0.0012*k*c5) (-42.8779*k*c5)];
%G = tf(numerator,P)
%k = 15;
%P = [1 (21.6068+3.09772*k*c3 + 0.54638*k*c4) (-0.0012*k*c4 - 3.4161 + 0.5463*k*c2 + 3.0972*k*c1) (-21.0659*k*c3 - 42.8779*k*c4 - 0.0012*k*c2 + 0.5463*k*c5 - 146.9644) (-21.0659*k*c1 - 138.8722 - 42.8779*k*c2 - 0.0012*k*c5) (-42.8779*k*c5)];
%G_comp = tf(numerator,P)
%zpk(G_comp)
%ltiview(G_comp)

%sym ksym
c1 = 10.8458;
c2 = -13.4583;
c3 = 1;
c4 = -4.0192;
c5 = -3.7792;
k = 1;
P = [1 (21.6068+3.09772*k*c3 + 0.54638*k*c4) (-0.0012*k*c4 - 3.4161 + 0.5463*k*c2 + 3.0972*k*c1) (-21.0659*k*c3 - 42.8779*k*c4 - 0.0012*k*c2 + 0.5463*k*c5 - 146.9644) (-21.0659*k*c1 - 138.8722 - 42.8779*k*c2 - 0.0012*k*c5) (-42.8779*k*c5)];
numerator = [0.5463 -0.001183 -42.88 0];
G = tf(numerator,P)

%zpk(G)

%pole(G)
%pzmap(G)
rlocus(G)
sgrid(0.78,0)
%[r,p,k] = residue(numerator,P)

%s = tf('s');
%dom_fnc = (-0.2137/(s+2.3495)*-0.1569/(s+0.7658))
%step(dom_fnc, 'b', G, 'r')
%legend('dom poles only','actual')
%step(dom_fnc)
%rlocus(dom_fnc)
%sgrid(0.78,0)

%k = 63.5
