clear all

binaryNumber = [1 1 1 0 1 1];

% hard code powers2 vector
powers2 = [32 16 8 4 2 1];

number = 0;
for k = 1:6, 
    number = number + powers2(k)*binaryNumber(k)
end




