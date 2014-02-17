
function plot_2Drandomwalk(in_file_name, out_file_name)
    
cd data\    
    dat = dlmread(in_file_name);
    x = dat(1, :);
    y = dat(2, :);
    
cd ..\figures\
    h = plot(x, y, 'o');
    saveas(h, out_file_name);
cd ..

end