A=[1 2 3; 4 5 6];
B=[7 8 9; 10 11 12];
[m,n]=size(A);
[m1,n1]=size(B);
if m~=m1 || n~=n1
    error('matrix dimensions do not match for addition.');
end

C=zeros(m,n);
for i=1:m % Row loop
    for j=1:n % Column loop
        C(i,j)=A(i,j)+B(i,j);
    end
end

disp("Result of Matrix Addition");
disp(C)