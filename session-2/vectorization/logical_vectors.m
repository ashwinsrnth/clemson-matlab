x = linspace(0, 1, 100);
y = randn(size(x));

plot(x, y)


plot(x, y)
figure()

% Remove negative values
% for i = 1:1:length(x)
%    if y(i) < 0
%        y(i) = [];
%        x(i) = [];
%    end
% end

% Use logical vectors to do the same!
indices = find(y < 0);

x(indices) = [];
y(indices) = [];

plot(x, y)
%}