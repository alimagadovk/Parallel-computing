clc
clear
fId = fopen('E:\Документы\ДЗ\Параллельные вычисления в микроэлектронике\500.txt', 'rt');
[i20, x20, y20] = ReadTxt(fId,501);
fId = fopen('E:\Документы\ДЗ\Параллельные вычисления в микроэлектронике\1000.txt', 'rt');
[i40, x40, y40] = ReadTxt(fId,1001);
fId = fopen('E:\Документы\ДЗ\Параллельные вычисления в микроэлектронике\2000.txt', 'rt');
[i80, x80, y80] = ReadTxt(fId,2001);
%%
x1 = x20;
x2 = x40(1:2:end);
x3 = x80(1:4:end);

y1 = y20;
y2 = y40(1:2:end);
y3 = y80(1:4:end);

delta1 = max(abs(y2 - y1));
delta2 = max(abs(y3 - y2));

delta = delta1 / delta2

log2(delta)