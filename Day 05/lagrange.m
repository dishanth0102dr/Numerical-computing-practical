function [sum]=lagrange(x,y,x0)
n=length(x);

sum=0;
for i=1:n
    product=y(i);
    for j=1:n
        if i~=j
            product=product*(x0-x(j))/(x(i)-x(j));
        end
    end
    sum=sum+product;
end
end