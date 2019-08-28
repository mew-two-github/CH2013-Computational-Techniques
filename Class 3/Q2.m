x=2;

TolX=10^(-6);
TolF=10^(-12);
error1=1;
y=myfun(x);
iter1=1;
while error1(iter1)>TolX || abs(y(1))>TolF
    iter1=iter1+1;
    xold=x;
    x=x-y(1,1)/y(1,2);
    error1=[error1,relativeerror(x,xold)];
    y=myfun(x);
end
iter1=iter1-1;
error1=relativeerror(x,xold);
xfinal1=x;
ffinal1=y(1);

x=100;
TolX=10^(-6);
TolF=10^(-12);
error2=1;
y=myfun(x);
iter2=1;
while error2(iter2)>TolX || abs(y(1))>TolF
    iter2=iter2+1;
    xold=x;
    x=x-y(1,1)/y(1,2);
    error2=[error2,relativeerror(x,xold)];
    y=myfun(x);
end
xfinal2=x;
ffinal2=y(1);
error2=relativeerror(x,xold);

function error=relativeerror(xnew,xold)
    error=100*abs((xnew-xold)/xnew);
end
function [y]=myfun(x)
    a=x.^3-10*x.^2+33*x-36;
    b=3*x.^2-20*x+33;
    c=6*x-20;
    y=[a b];
end