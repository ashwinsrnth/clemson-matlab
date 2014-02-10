

nwalks = 100;

hold on



nsteps = 100;

for i = 1:nwalks

    pos = 0;
    x   = zeros(1, nsteps);

    for j = 1:nsteps
    
        x(j) = pos;
    
        if randi(2) == 1
            pos += 1;
        else
            pos -= 1;
        end
    
    end
    plot(x)

end


print -dpng 'fig.png'