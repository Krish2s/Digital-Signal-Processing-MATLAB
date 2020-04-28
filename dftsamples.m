clc;close all;clear all;
disp('Krushna Garkal TETA10');
disp('Exp.1 :Implementation of DFT');
disp('_________________________________________');
N=input('Enter the size of DFT:');
x=input('Enter the samples:');
L=length (x);
if N>L
    x=[x zeros(1,(N-L))];
elseif N<L
    x=[x(1:N)]
end
%N=4;
%x=[1 2 3 4];
n=[0: 1 : N-1];
k=[0: 1 : N-1];
w=exp(-j*2*pi/N);
nk=n'*k
W=w.^nk
disp ('DFT samples');
X=x*W
subplot(211);
stem (n,x);
title('Discrete Samples ');
xlabel('x(n)');
ylabel('n---->');
subplot(212);
stem (k,X);
title('DFT output ');
xlabel('k--->');
ylabel('x(k)');
