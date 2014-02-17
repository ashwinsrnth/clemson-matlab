

function perform_2Drandomwalk(nsteps, out_file_name)
    
    % initialise x and y
    x = zeros(1, nsteps);
    y = zeros(1, nsteps);
    
    for j = 2:nsteps
        
        r = randi(4); % simulates a "four-faced coin flip"
        
        if r == 1
            x(j) = x(j-1) + 1;
            y(j) = y(j-1);
        elseif r == 2
            % your code here%
            
            % ------------- %
        elseif r == 3
            % your code here
            
            % ------------- %
        else
            % your code here
            
            % ------------- %
        end
        
    end
    
    cd data\
    dat = [x; y];    
    % Write to file using dlmwrite:
    dlmwrite(out_file_name, dat, 'newline', 'pc');
    cd ..
end
