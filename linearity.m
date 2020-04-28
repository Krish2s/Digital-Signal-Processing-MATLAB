clc;close all; clear all;
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


X=input ['Input for spectrum analysis']


    
   