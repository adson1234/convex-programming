clear all
x=linspace(0,4);
y1=2;
y2=sqrt(x);
hold on;
plot(x,y1,x,y2);
grid on ;
axis ( [ -5 , 5 , -5 , 5 , -5 , 5 ] );
area(x,min(y1,y2),-5);