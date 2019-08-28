data=struct('a0',-36,'a1',33,'a2',-10,'a3',1);
X0=0;
options=optimset('Display','iter','TolX',10^(-2),'TolFun',10^(-6));
[xfinal3,ffinal3,exitflag,s]=fzero(@myfun1,X0,options)
iter3=s.iterations
function f=myfun1(x)
    data=struct('a0',-36,'a1',33,'a2',-10,'a3',1);
    f=(data.a0)+(data.a1)*x^1+(data.a2)*x^2+(data.a3)*x^3;
end