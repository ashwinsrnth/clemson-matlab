
% Read the image and obtain its dimensions:
M = imread('img.png');
[R, C] = size(M);

% Break image into 'quarters'. We have done one
% for you.
%  ____ ____
% | q1 | q2 |
% |____|____|
% |    |    |
% |_q3_|_q4_|
%
%

% --------- YOUR CODE HERE --------- %
%q1 = 
%q2 = 
q3 = M(R/2+1:end, 1:R/2);
%q4 = 

% ---------------------------------- %

% Confirm that this command stacks the images
% appropriately
fixed_im = [q4, q3; q2, q1];

imwrite(fixed_im', 'fixedim.png');
