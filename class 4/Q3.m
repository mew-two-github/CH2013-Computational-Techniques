p=[1,-10,33,-36];
rootsofp=roots(p)
x0=0;
myfun=@(x) fun(x,p)
options=optimset('Display','iter','TolX',10^(-2),'TolFun',10^(-2));
[xfinal1,ffinal1,exitflag,s]=fzero(myfun,x0,options);
iter1=s.iterations;
options=optimoptions(@fsolve,'StepTolerance',10^(-2),'FunctionTolerance',10^(-2));
[xfinal2,ffinal2,exitflag,s]=fsolve(myfun,x0,options);
iter2=s.iterations;
options=optimset()
[xfinal3,ffinal3,exitflag,output3]=fzero(myfun,x0);
iter3=output3.iterations+1;
[xfinal4,ffinal4,exitflag,s]=fsolve(myfun,x0);
iter4=s.iterations;
function f=fun(x,p)
    f=(p(4))+p(3)*x^1+p(2)*x^2+p(1)*x^3;
end