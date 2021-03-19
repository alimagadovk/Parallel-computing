function [i, x, y] = ReadTxt(fId,count)
%M = fscanf(fId1,'i=       %f  x=%f y1=%f\n')
for j = 1:count
i(j) = fscanf(fId,'i=       %f');
x(j) = fscanf(fId,'  x=%f');
y(j) = fscanf(fId,' y1=%f\n');
end
fclose(fId);
end