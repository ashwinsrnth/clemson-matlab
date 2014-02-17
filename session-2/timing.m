
% In this example, we'll time two codes
% that do the same thing differently
% Let's pretend we don't know about
% vectorising loops

x = 1e-2.*randn(1, 10000) + 1.0;
x_m = mean(x);
n = length(x);

% Algorithm 1

tic;
    x_var = 0;
    for i = 1:1:n
        x_var += (1./n).*(x(i) - x_m).^2;
    end
time = toc;

disp(['Variance calculated by Algorithm 1: ' num2str(x_var)])
disp(['Time taken for running Algorithm 1: ' num2str(time) ])

% Algorithm 2

tic;
    x_var = 0;
    for i = 1:1:n
        x_var += (1./n).*(x(i).^2 - x_m.^2);
    end
time = toc;


disp(['Variance calculated by Algorithm 2: ' num2str(x_var)])
disp(['Time taken for running Algorithm 2: ' num2str(time) ])

disp(['Matlab computed value of variance : ' num2str(var(x))]);