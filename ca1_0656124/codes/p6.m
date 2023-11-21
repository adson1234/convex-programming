clear all
y=linspace(-5,5);
x=sqrt(max(1-y.^2,0));
x2=-x;
hold on;
plot(x,y,x2,y);
grid on ;
axis ( [ -5 , 5 , -5 , 5 , -5 , 5 ] );
fill([ -5 ,-5, 5, 5 ],[ -5 ,5,5, -5 ],'y');
fill(x,y,'w');
fill(x2,y,'w');