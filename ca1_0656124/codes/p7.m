clear all
x=linspace(1,100);
y0=x*0;
y1=y0+100;
y2=log10(x);
hold on;
plot(x,y0,x,y1,x,y2);
grid on ;
axis ( [ -5 , 110 , -5 , 5 , -5 , 5 ] );
area(x,min(y1,y2));