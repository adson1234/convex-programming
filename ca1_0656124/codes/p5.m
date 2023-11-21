clear all

x0=linspace(-5,0);
y0=x0*0;
x=linspace(0,1);
y=x.^2;
x1=linspace(1,5);
y1=x*0+1;
hold on;
plot(x0,y0,x,y,x1,y1);
grid on ;
axis ( [ -5 , 5 , -5 , 5 , -5 , 5 ] );
area([x0 x x1],[y0 y y1],-5);