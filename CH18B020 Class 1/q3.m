for i=1:10
    fprintf("%i\n",i^2)
end;

v(1:7)=0;
v(1)=0.1
v(1)-exp(v(1))
for j=1:6
    v(j+1)=exp(-v(j));
    v(j+1)-exp(v(j+1))
end;

vfinal=v(7)

%End