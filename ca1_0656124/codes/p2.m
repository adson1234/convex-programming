clear all
figure
[x,y,z] = sphere;

hold on;
surf(2.*x,2.*y,2.*z) % centered at (3,-2,0) 
grid on ;
axis ( [ -5 , 5 , -5 , 5 , -5 , 5 ] );