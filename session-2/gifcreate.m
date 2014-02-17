x = 0:0.01:2*pi;
omega = 0.5;
k = 1;
 
for t=1:50
 
    plot(x, sin(omega*t + k*x), 'linewidth', 2, 'color', 'red');
    ylim([-1 1]);
    xlim([0 2*pi]);
    grid on;
 
    % gif utilities
    set(gcf,'color','w'); % set figure background to white
    drawnow;
    frame = getframe(1);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    outfile = 'sinewave.gif';
 
    % On the first loop, create the file. In subsequent loops, append.
    if t==1
        imwrite(imind,cm,outfile,'gif','DelayTime',0,'loopcount',inf);
    else
        imwrite(imind,cm,outfile,'gif','DelayTime',0,'writemode','append');
    end
 
end