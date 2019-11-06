t=0:1:10;
A = zeros(11);
A(1,1)=1;
for i = 2: 10
    A(i,i)=-2.15;
    A(i,i-1)=1;
    A(i,i+1)=1;
end
A(11,11)=1;
b=zeros(1,11);
b(1)=240;
b(11)=150;
b=b';
T=A\(b);
plot(t,T);


t2=0:2:10;
W = zeros(6);
W(1,1)=1;
for i = 2:5
    W(i,i)=-2.6;
    W(i,i-1)=1;
    W(i,i+1)=1;
end
W(6,6)=1;
c=zeros(1,6);
c(1)=240;
c(6)=150;
c=c';
T2=W\(c);
figure(2)
plot(t2,T2);

plot(t,T,t2,T2);

