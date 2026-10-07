 
f=[200 400 600];
A=[1 2 1.5];
phi=[0 pi/3 pi/4];

f0=gcd(gcd(f(1),f(2)), f(3));
T=1/f0;
fs=100000; %taxa de amostragem de 100kHz
t=0:1/fs:4*T;
[1/f0 T*fs] %período e numero de pontos por período

f1=A(1)*sin(2*pi*f(1)*t + phi(1));
f2=A(2)*sin(2*pi*f(2)*t + phi(2));
f3=A(3)*sin(2*pi*f(3)*t + phi(3));

xc= f1+f2+f3;
 

plot(t, xc, "LineWidth",1.2);
grid on;
xlabel('Tempo(s)');
ylabel('Amplitude do sinal x_c(t)');
title('Sinal x_c(t) em 4 períodos(equivalente a 5ms)')
 
 