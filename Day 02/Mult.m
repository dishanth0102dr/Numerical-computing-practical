function C=Mult(A,B)

[m,n]=size(A);
[m1,n1]=size(B);

if n~=m1
    error('Can not multiplicate');
end

C=zeros(m,n1);

for i=1:m
    for j=1:n1
        for k=1:n
            C(i,j)=C(i,j)+A(i,k)*B(k,j);
        end
    end
end

disp("Result of Matrix Multiplication");
end
