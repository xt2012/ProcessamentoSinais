 
f=[200 400 600];
A=[1 2 1.5];
phi=[0 pi/3 pi/4];

f0=gcd(gcd(f(1),f(2)), f(3));
fs=3000; %taxa de amostragem de 3kHz
T=1/fs 
N=30; %;número de amostras
n=(0:N-1);

%x(t)=x[nT]
 
f1=A(1)*sin(2*pi*f(1)*(n*T) + phi(1));
f2=A(2)*sin(2*pi*f(2)*(n*T) + phi(2));
f3=A(3)*sin(2*pi*f(3)*(n*T) + phi(3));

xd= f1+f2+f3;
 

stem(n, xd, "LineWidth",1.2, 'Marker','o');
grid on;
xlabel('Amostra[n]');
ylabel('Amplitude do sinal amostrado x_d[n]');
title('30 amostras do sinal x_d[n] ')
 
 