%Second question
a=[1;4.5;9.6]
b=[1.6,8,7.3]
n=5;
c=[1:n]
d=a'+b
e=a(2)
f=a(3)+b(2)
%AC


G=[7,2,-3;2,5,-3;1,-1,-6]
H=inv(G)
z=[-12;-20;-26]
x=H*z%inv(G)*z
P=[2,5,-3;2,5,-3;1,-1,-6]
inv(P)
Q=G.*P
R=G*P
G==R
S=eye(4)
t=diag(S)
u=P(:,3)
%End