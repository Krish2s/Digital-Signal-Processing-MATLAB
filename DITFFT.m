clc;close all; clear all;
disp('Krushna Garkal TETA10');
disp('Exp.1 :Implementation of DITFFT');
disp('_________________________________________');
%x = input ('Enter the input Sequence : ')
%N= input ('Size of DFT : ')
x=[2 -2 -2 2]
N=4
L=length (x);
if N>L
    x=[x zeros(1,(N-L))];
elseif N<L
    x=[x(1:N)]
end
y=bitrevorder(x)
M=log2(N)
for m=1:M
    d=2^m
    for l=1:d:N-d+1
        for k=0:(d/2)-1
            w=exp(-1*j*2*pi*(k/d))
            z1=y(l+k)
            z2=y(l+k+(d/2))
            y(l+k)=z1+w*z2
            y(l+k+(d/2))=z1-w*z2
        end
    end
end
disp (y)
subplot (311)
stem (abs(x))
title ('Discrte Samples');
xlabel ('n--->');
ylabel ('Amplitude');

subplot (312)
stem (abs(y))
title ('DITFFT output');
xlabel ('n--->');
ylabel ('Amplitude');

subplot (313)
stem (angle(y))
title ('Angle of DITFFT');            
