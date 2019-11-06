x=[0,0.5,1,1.5,2,2.5,3,3.5,4];

x2=zeros(1,41);
for i = 1:40
    x2(i+1)=x2(i)+0.1;
end

yan = func(x);

yEuler1=zeros(1,9);
yEuler1(1) = 10;
y=10;
j=1;
h=0.5;
n=0.5/h;
for i = 1:8
    j=1;
    y=yEuler1(i);
   while j<=n
       y=euler(x(i)+(j-1)*h,y,h);
       j=j+1;
   end
   yEuler1(i+1)=y;
end

yEuler2=zeros(1,41);
yEuler2(1) = 10;
y=10;
j=1;
h=0.1;
n=4/h;
for i = 1:40
    j=1;
    y=yEuler2(i);
    y=euler(x2(i),y,h);
    yEuler2(i+1)=y;
   
end

plot(x,yan,'-',x,yEuler1,'+',x2,yEuler2,'x');

xspan = [0 4];
[xout,yode45] = ode45(@ODEFUN,xspan,10);


figure(2)
plot(xout,yode45);

function y = func(x)
    y=-(x.^4)./2+4*x.^3-10*x.^2+8.5*x+10;
end


function val = euler(x,y,h)
    dy=(-2*x^3+12*x^2-20*x+8.5)*h;
    val=y+dy;
end

function f=ODEFUN(x,y)
    f=(-2*x.^3+12*x.^2-20.*x+8.5);
end