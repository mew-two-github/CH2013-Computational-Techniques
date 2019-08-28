reactiondata=struct('k0',[0.001,0.34],'Eact',[12000,5600]);
T=linspace(300,1000,8);
C1=0.1;
C2=0.01;
rate1=[0,0,0,0,0,0,0,0];
rate2=[0,0,0,0,0,0,0,0];
for i=1:8
    [rate1(i),rate2(i)]=reactionrate1(C1,C2,T(i),reactiondata);
end

semilogy(T,rate1,T,rate2);
function [r1,r2]=reactionrate1(C1,C2,T,reactiondata)
    a=(reactiondata.k0);
    b=reactiondata.Eact;
    r1=a(1)*exp(-b(1)/(8.314*T))*C1*C2;
    r2=a(2)*exp(-b(2)/(8.314*T))*C1*C2;
end