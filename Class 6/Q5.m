x=linspace(-5,5,20);
y=linspace(-5,5,20);
z=zeros(20);
[X,Y] = meshgrid(x,y);
for i=1:20
    for j=1:20
       l=[X(i,j),Y(i,j)];
       z(i,j)=func(l) ;    
    end
end
figure(1)
surf(x,y,z);
figure(2)
contour(x,y,z);
options=optimset('TolX',10^(-6),'TolFun',10^(-6));
[X,ffinal2,flag2,output]=fminsearch(@func,[0,0],options);
xfinal2=X(1);
yfinal2=X(2);
iter2=output.iterations;

function z=func(x)
    y=x(2);
    x=x(1);
    z=x^2+4*y^2-8*x+12*y-2*x*y;
end