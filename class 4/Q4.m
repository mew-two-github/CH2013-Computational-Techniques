options=optimoptions(@fsolve,'FunctionTolerance',10^-6,'MaxIterations',10,'Display','iter');
[X,FVAL,EXITFLAG,OUTPUT,JACOB]=fsolve(@(x)fun2(x),[-1,-2],options);
Solution1=struct('x1',X(1),'x2',X(2),'f1',FVAL(1),'f2',FVAL(2),'jacobian',JACOB,'exitflag',EXITFLAG,'iterations',OUTPUT.iterations);
[X,FVAL,EXITFLAG,OUTPUT,JACOB]=fsolve(@(x)fun2(x),[-2,100],options);
Solution2=struct('x1',X(1),'x2',X(2),'f1',FVAL(1),'f2',FVAL(2),'jacobian',JACOB,'exitflag',EXITFLAG,'iterations',OUTPUT.iterations);
function z = fun2(x)
    z=[2*exp(x(1))+x(2);3*x(1)^2+4*x(2)^2-8];
end
