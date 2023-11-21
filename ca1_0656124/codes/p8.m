clear all
x=linspace(-pi/4,pi/4);
y0=x*0+sqrt(2)/2;
y1=sin(x);
hold on;
plot(x,y0,x,y1);
grid on ;
axis ( [ -5 , 5 , -5 , 5 , -5 , 5 ] );
%area(x,x*0+5,-5);
%area(x,min(y0,y1),-5, 'Facecolor','w');
x=[x pi/4 -pi/4];
y=[min(y0,y1) 5 5];
fill(x,y,'y');