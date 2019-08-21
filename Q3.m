xl=0;
xu=2;
x=[xl,xu]
for i=1:inf
    xnew=bisection(xu,xl);
    x=[x,xnew];
    if i==1
        Err1=relativeerror(xnew,xl)
    else
        Err1=[Err1,relativeerror(xnew,xl)]%or preallocate and then shrink
    end
    if Err1(i)<=10^(-6)
        if myfun(xnew)<=10^(-6)
            xfinal1=xnew
            ffinal1=myfun(xnew)
            break
        end
    end
    if (myfun(xnew))*(myfun(xl))<0
        xu=xnew;
    else
        xl=xnew;
    end
end
figure(1)
plot(Err1)
y=-4;
for i=2:numel(x)
    y=[y,myfun(x(i))]
end
figure(2)
plot(x,y)

function xnew=bisection(xl,xu)
    xnew=(xu+xl)/2;
end

function error1=relativeerror(xnew,xold)
    error1=100*abs((xnew-xold)/xnew);
end

function f=myfun(x)
    f=exp(0.5*x)-5+5*x;
end