C=[1;4.5;3.2;1.78;0;-9];
N=numel(C)
Sum2=sumofelements(C,N)

D=[1,4,5,9;-1,3,5,9;8,2,1,6;15,10,-2,10];
E=diag(D);%in built function to obtain diagonal of a matrix
Sum3=sumofelements(E,numel(E))

F=D(:,1)
Sum4=sumofelements(F,numel(F))

%Function to find sum of elements in a vector
function sum=sumofelements(C,n)
    sum=0;
    %use isvector(C) to check whether C is a vector
    for i=1:n
        sum=sum+C(i);
    end
end
