t = textread('t.txt');
x = textread('X.txt');
y = textread('Y.txt');
T = textread('temps.txt');

for i = 1:length(t)
    temps = T(i,:);
    temps = reshape(temps, 40, 40);
    mcontourf(x, y, temps);
    F(i) = getframe;
end

movie(F, 5);
