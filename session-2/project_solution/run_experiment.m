nwalks = 100;
steps_per_walk = 100;

for i = 1:nwalks
    fname = sprintf('walk%d.txt', i);
    perform_2Drandomwalk(steps_per_walk, fname);
end