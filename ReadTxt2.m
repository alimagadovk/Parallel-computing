function [i, x, y] = ReadTxt2(fId,count)
%M = fscanf(fId1,'i=       %f  x=%f y1=%f\n')
for j = 1:count
i(j) = fscanf(fId,'i=       %f');
x(j) = fscanf(fId,'  x=%f');
y(j) = fscanf(fId,' y=%f');
u(j) = fscanf(fId,' u=%f');
d(j) = fscanf(fId,' d=%f\n');
end
fclose(fId);
end