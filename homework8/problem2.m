% Homework 8
% Problem 2

clear all
clc

K = 1;

s = tf('s');
G = (K)/((s+3)*(s+5));

figure(1)
subplot(2,2,1)
pzmap(G)

subplot(2,2,2)
rlocus(G)

K = 10;
G = (K)/((s+3)*(s+5));
subplot(2,2,3)
rlocus(G)

K = 100;
G = (K)/((s+3)*(s+5));
subplot(2,2,4)
rlocus(G)