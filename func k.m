clc
clear
a = 0.1;
omg = 20;
k = @(x,t) (1 + 10.*exp(-(x-0.5).^2 ./ a^2).*(1 - exp(-omg.*t)));
X = 0:0.01:1;
T = 0:0.01:2;
[X,T] = meshgrid(X,T);
K = k(X,T);
mesh(X,T,K)