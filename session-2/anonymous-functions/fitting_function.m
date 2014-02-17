function [out] = fitting_function(x, xdata)
    c1 = x(1); 
    c2 = x(2); 
    out = c1.*xdata + c2;
end
