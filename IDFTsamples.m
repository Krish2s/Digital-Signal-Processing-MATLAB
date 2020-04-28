clc;close all;clear all;
disp('Krushna Garkal TETA10');
disp('Exp.1 :Implementation of DFT');
disp('_________________________________________');
N=input('Enter the size of DFT:');
X=input('Enter the output samples:');
n=[0: 1 : N-1];
k=[0: 1 : N-1];
w=exp(j*2*pi/N);
nk=n'*k
W=w.^nk
disp ('DFT samples');
x=(1/N)*(X*W)
subplot(211);
stem (n,X);
title('Discrete Samples ');
xlabel('x(n)');
ylabel('n---->');
subplot(212);
stem (k,x);
title('DFT output ');
xlabel('k--->');
ylabel('x(k)');
