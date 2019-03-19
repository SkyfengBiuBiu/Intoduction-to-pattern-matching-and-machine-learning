x=[];
y=[];

figure; 
axis([0 5 0 5]); 
[x,y]=ginput(5);
scatter(x,y,"cx");
hold("on");
%plot(x,y,'r-');
hold("on");
[a,b]=linfit(x,y);
y=a*x+b;
plot(x,y,'b--');