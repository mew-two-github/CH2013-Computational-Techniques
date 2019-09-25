x=linspace(0,8,20);
y=func(x);
y=-1*y;
plot(x,y);
options=optimset('MaxIter',20,'TolX',0.01,'TolFun',10^(-12));
[xfinal1,ffinal1,flag1,output]=fminbnd(@func,4,8,options);
ffinal1=-1*ffinal1;
iter1=output.iterations;
function y=func(x)
    y=-(2*sin(x)-x.^2/10);
end