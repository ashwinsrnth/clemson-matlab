% Find pi by numerical integration


f = @(x) 2./(sqrt(1 - x.^2));
y = quad(f, 0, 1);

disp(y)