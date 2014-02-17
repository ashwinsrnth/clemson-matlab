

function perform_2Drandomwalk(nsteps, out_file_name)
    
    x = zeros(1, nsteps);
    y = zeros(1, nsteps);
    
    for j = 2:nsteps
        
        r = randi(4);
        if r == 1
            x(j) = x(j-1) + 1;
            y(j) = y(j-1);
        elseif r == 2
            x(j) = x(j-1) - 1;
            y(j) = y(j-1);
        elseif r == 3
            x(j) = x(j-1);
            y(j) = y(j-1) + 1;
        else
            x(j) = x(j-1);
            y(j) = y(j-1) - 1;
        end
        
    end
    
    cd data\
    dat = [x; y];
    dlmwrite(out_file_name, dat, 'newline', 'pc');
    cd ..
end
