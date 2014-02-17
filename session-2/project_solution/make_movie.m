writerObj = VideoWriter('movie.avi');
open(writerObj);

cd figures
for i = 1 : nwalks
  filename = sprintf('walk%d.png', i);
  thisimage = imread(filename);
  writeVideo(writerObj, thisimage);
end
cd ..

close(writerObj);