                                                                     
                                                                     
                                                                     
                                             
% This code reads the results of a heat conduction simulation
% and makes an animation of them.
%  
% 
%

X = dlmread('X.txt');

% Similarly, read the rest of the text files
% Y.txt, t.txt and temps.txt
% Save the contents to variables names 'Y', 't' and 'temps' respectively
% You might want to try reading these on the
% shell first, and checking their sizes.

% ---------------- YOUR CODE HERE --------------- %



% ----------------------------------------------- %

% The next few lines of code read the first row
% of 'temps', and reshape it to the same size
% as 'X' and 'Y'. We then plot a 'contour' of the
% temperatures. This image is the first 'frame' of
% our movie.

% Rewrite the code to:
%
% - Loop over all the time steps
%       - Extract the temperatures corresponding to the time step
%       - Reshape the temperature vector extracted
%       - Draw a contour plot of the temperatures
%       - Add the plot to the 'list of frames'


% --------------- REWRITE THIS CODE -------------- %
temps = T(1,:);
temps = reshape(temps, 40, 40);
mcontourf(x, y, temps);
F(1) = getframe;
% ------------------------------------------------ %

% Play the movie 5 times
movie(F, 5);
