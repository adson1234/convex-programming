clear all
r= 2 ;
theta_upper=linspace( 0 , pi );
theta_lower=linspace( pi , 2*pi );
x_upper=r.*cos(theta_upper);
x_lower=r.*cos(theta_lower);
x=[x_upper x_lower];
y_upper=r.*sin(theta_upper);
y_lower=r.*sin(theta_lower);
y=[y_upper y_lower];
hold on;
plot( x , y ) ; grid on ;
axis ( [ -5 , 5 , -5 , 5 ] );
fill (x , y ,'y' ) ;