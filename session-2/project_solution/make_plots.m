
axis([-30, 30, -30, 30]);
hold on

for i = 1:nwalks
    data_fname = sprintf('walk%d.txt', i);
    plot_fname = sprintf('walk%d.png', i);
    plot_2Drandomwalk(data_fname, plot_fname);
end