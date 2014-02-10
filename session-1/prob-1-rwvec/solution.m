x = load('read_vector.txt');
m = mean(x);
y = (x - mean(x))';


save('output.txt', 'y')