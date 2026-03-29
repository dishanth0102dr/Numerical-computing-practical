function [root]=newton(x0,step,epes)
n=1;
er=1;
xr=x0;

while (n<=step && er>epes)
    if df(xr)~=0
        xr_new=xr-f(xr)/df(xr);
    end
    
    if xr_new~=0
        er=abs((xr_new-xr)/xr_new);
    end

    xr=xr_new;
    stp(n)=n;
    error(n)=er;
    n=n+1;
end

root=xr;
figure
plot(stp, error)
xlabel('stp');
ylabel('Error');
grid on

end