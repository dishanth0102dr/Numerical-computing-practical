function [root]=fixed(x0,steps,epes)

xr=x0;
n=1;
er=1;

stp = [];
errors = [];

while (n<=steps && er>epes)
    xr_old = xr;
    xr = g(xr_old);

    if xr~=0
        er=abs((xr-xr_old)/xr);
    end

    errors(n) = er;
    stp(n) = n;
    n = n+1;
end

root = xr;
figure
    plot(stp, errors)
    xlabel('stp');
    ylabel('errors');
    grid on
end