function [a,b]=linfit(x,y)

N=length(x);
p1=N*sum(x.*y)-sum(x)*sum(y);
p2=N*sum(x.^2)-sum(x)*sum(x);
a=p1/p2;

p3=sum(x.^2)*sum(y)-sum(x)*sum(x.*y);
p4=N*sum(x.^2)-sum(x)*sum(x);
b=p3/p4;