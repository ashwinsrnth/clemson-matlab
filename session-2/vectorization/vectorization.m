
% Some vector functions can dramatically
% improve the performance of your code.
% Always, always think carefully about
% whether you really need to write a loop.

tic
    s = 0;
    for n = 1:100000
        s = s + 1./(n.^2);
    end
toc


tic
    n = 1:100000;
    s = sum(1./n.^2);
toc

