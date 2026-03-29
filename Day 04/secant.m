function[root]=secant(x0,x1,step,epes)
n=1;
er=1;
x2=0;

iter = [];
x2_values = [];
errors = [];

if f(x0)*f(x1)<0
    while (n<=step && er>epes)

        if (f(x1)-f(x0)) == 0
            error('Division by zero encountered in secant method');
        end
        
        x2_old=x2;
        x2=x1-((f(x1)*(x1-x2))/(f(x1)-f(x0)));

        x0=x1;
        x1=x2;

        if n>1
            er=abs((x2-x2_old)/x2);
        end

        iter(n) = n;
        x2_values(n) = x2;
        errors(n) = er;

        n = n+1;
    end
    root=x2;

    figure
    plot(iter, x2_values)
    xlabel('Iteration');
    ylabel('Root approximation');
    grid on
else
    disp('There is no root in this intervel');
end
end