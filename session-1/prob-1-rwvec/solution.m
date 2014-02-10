x = dlmread('read_vector.txt');
m = mean(x);
y = (x - mean(x))';


dlmwrite('output.txt', 'y', 'newline', 'pc')