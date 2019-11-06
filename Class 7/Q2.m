t=0:0.1:10;

yan=funcy(t);
zan=funcz(t);

tspan = [0 10];
[tout,yout] = ode15s(@fun,tspan,[1 0]);

plot(t,[yan' zan']);

figure(2)
plot(tout,yout);

yode15s=yout(:,1);
zode15s=yout(:,2);


figure(3)
plot(tout,yode15s,'-',t,yan,'.');
figure(4)
plot(tout,zode15s,'-',t,zan,'.');

function y=funcy(t)
    y=zeros(1,length(t));
    n=length(t);
    for i = 1:n
        y(i)=2*exp(-t(i))-exp(-100*t(i));
    end
end    

function z=funcz(t)
    z=zeros(1,length(t));
    n=length(t);
    for i = 1:n
        z(i)=-exp(-t(i))+exp(-100*t(i));
    end
end  

function val = fun(t,y)
    val = zeros(1,2);
    val(1)=98*y(1)+198*y(2);
    val(2)=-99*y(1)-199*y(2);
    val=val';
end