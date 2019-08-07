x=linspace(0,pi,10)

y=cos(x)
z=exp(-x)
figure(1)
plot(x,y,'g+-',x,z,':c+',...
    'LineWidth',pi/10,...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r')
figure(2)
 subplot(2,1,1), plot(x,y)
 subplot(2,1,2), plot(x,z)
 figure(3)
 semilogx(x,z)