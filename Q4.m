xl=0;
xu=2;
x=[xl,xu]
for i=1:inf
    xnew=falseposition(xl,xu);
    x=[x,xnew];
    if i==1
        Err2=relativeerror(xnew,xl)
    else
        Err2=[Err2,relativeerror(xnew,xl)]%or preallocate and then shrink
    end
    if myfun(xnew)<=10^(-6)
        if Err2(i)<=10^(-6)
            xfinal2=xnew
            ffinal2=myfun(xnew)
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
plot(Err2)
y=-4;
for i=2:numel(x)
    y=[y,myfun(x(i))];
end
figure(2)
plot(x,y)

function xnew=falseposition(xl,xu)
    xnew=((xl*myfun(xu)-xu*(myfun(xl)))/(myfun(xu)-myfun(xl)))
end

function error1=relativeerror(xnew,xold)
    error1=100*abs((xnew-xold)/xnew);
end

function f=myfun(x)
    f=exp(0.5*x)-5+5*x;
end