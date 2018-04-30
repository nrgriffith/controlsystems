closed_loop

% Generate Square Wave
[u,t]=gensig('square',10,20,0.1);

% Simulate
[simy, simt] = lsim(T,u,t);
