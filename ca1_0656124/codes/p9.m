clear all
x1=linspace(0,10);
y1=x1;
y2=max(5-x1,0);
x2=linspace(0,-10);
y3=-x2;
y4=max(5+x2,0);
hold on;
plot(x1,y1,x1,y2,x2,y3,x2,y4);
grid on ;
axis ( [ -10 , 10 , -10 , 10 , -5 , 5 ] );
area(x1,min(y1,y2), 'Facecolor' , 'b');
area(x2,min(y3,y4), 'Facecolor' , 'b');