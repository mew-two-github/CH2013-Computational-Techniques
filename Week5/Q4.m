Cdata=[0.24; 0.32; 0.70; 1.37; 1.58; 2.04; 2.26; 2.28; 2.39; 2.41];
rdata=[0.3839; 0.3935; 0.911; 1.4975; 1.5735; 1.749; 1.9355; 1.893; 1.970; 1.924];
[P]=polyfit(Cdata,rdata,2);
P1=P(1);
P2=P(2);
P3=P(3);
rmodel1=P1*(Cdata.^2)+P2*Cdata+P3;
residual1=rmodel1-rdata;
err1=norm(residual1);

%PART 2
X0=[1;1];
[X,RESNORM,residual2,EXITFLAG,OUTPUT]=lsqcurvefit(@func,X0,Cdata,rdata);
Afinal=X(1);
Bfinal=X(2);
iterations=OUTPUT.iterations;
funccount=OUTPUT.funcCount;
rmodel2=func(X,Cdata);
err2=norm(residual2);

plot(Cdata,rdata,'r+',Cdata,rmodel1,'b-',Cdata,rmodel2,'g-');

function r=func(X,C)
    r=(X(1).*C)./(X(2)+C);
end
