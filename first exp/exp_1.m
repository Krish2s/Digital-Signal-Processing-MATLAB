clc;close all;clear all;
disp('Krushna Garkal TETA10');
disp('Exp.1 :Implementation of DFT,IDFT,verifying properties and spectrum analysis');
disp('_________________________________________');
%Implementation of DFT
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


%Implimentation of IDFT
disp('Krushna Garkal TETA10');
disp('Exp.1 :Implementation of IDFT');
disp('_________________________________________');
N=input('Enter the size of DFT:');
X=input('Enter the output samples:');
n=[0: 1 : N-1];
k=[0: 1 : N-1];
w=exp(j*2*pi/N);
nk=n'*k
W=w.^nk
disp ('IDFT samples');
x=(1/N)*(X*W)
subplot(211);
stem (n,X);
title('Discrete Samples ');
xlabel('x(n)');
ylabel('n---->');
subplot(212);
stem (k,x);
title('IDFT output ');
xlabel('k--->');
ylabel('x(k)');



%Properties of DFT and IDFT
x1=input ('Enter the first input sequence : ');
N1=length(x1);
x2=input ('Enter the second input sequence : ');
N2=length(x2);
N=max(N1,N2)
n=[0:1:N-1]
k=[0:1:N-1]
if N1>N2
    k1=N1-N2
    x2=[x2,zeros(1,k1)];
elseif (N2>N1)
    k2 =(N2-N1)
    x1=[x1,zeros(1,k2)];
end

%RHS
%Find DFT of x1
X1=fft(x1);
%find DFT of x2
X2=fft(x2)

disp ('addition of two Dft sequences : ');
f1=X1+X2


%LHS 
for i=1:N
    for j=1:N
        if (i==j)
            x(i)=x1(i)+ x2(j)
        end
    end
end
%DFT of addition of two sequences

f2=fft(x);
if (f1==f2)
    disp('Linearity property is verified')
else
    disp('Linearity property is not verified !!! ')
end

%Symmtry property
x=input ('Enter the input sequence : ');
y=fft(x)
z=abs(y)
if z(2)==z(8)
    disp ('Since x(1)=x*(7),x(2)=x*(6)  ')
    disp('Symmetry property is verified')
else 
    disp('Symmetry property is not verified!!!')
end






%% Implementation of formula for DFT

disp('Spectrum Analysis of DFT')
x=[1 1 1 1];
subplot(3,3,1)
stem(x)
grid on
for i=2:1:9;
    N=2^i  ;
    n=[0:1:(N-1)];
    k=[0:1:(N-1)];
    l=length(x);
    if(N>l)
        x=[x zeros(1,(N-l))];
    elseif(N<l)
        x=x(1:N);
    end
    w=exp((-1j*2*pi*n'*k)/N);
    X=w*x';
    subplot(3,3,i)
    stem(X)
    grid on    
end
