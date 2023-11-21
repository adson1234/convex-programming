clear all
x = linspace(-20, 20, 250);		% �b x �b [-2,2] ������ 25 �I  
y = linspace(-20, 20, 250);		% �b y �b [-2,2] ������ 25 �I  
[xx,yy] = meshgrid(x, y);		% xx �M yy ���O 25��25 ���x�}  
zz = -(xx+yy-11);		% zz �]�O 25��2 ���x�}  
hold on;
surf(xx, yy, zz);				% �e�X���馱����  
colormap('default')
grid on ;
axis ( [ -20 , 20 , -20 , 20 , -20 , 20] );