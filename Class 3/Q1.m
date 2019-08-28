X=(linspace(0,5,51))';%chk
F=zeros(51,3);
F=myfun(X);
plot(X,F(:,1),X,F(:,2),X,F(:,3));
function [y]=myfun(x)
    a=x.^3-10*x.^2+33*x-36;
    b=3*x.^2-20*x+33;
    c=6*x-20;
    y=[a b c]
end