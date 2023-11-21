clear all
yv=linspace(0,4);
x0=yv*0;

x=linspace(0,4);
y0=x*0;
y1=(12-2*x)/4;
y2=4-x;
hold on;
plot(x0,yv,x,y0,x,y1,x,y2);
grid on ;
axis ( [ -5 , 5 , -5 , 5 , -5 , 5 ] );
area(x,min(y1,y2));