clear all
x = linspace(-20, 20, 250);		% 在 x 軸 [-2,2] 之間取 25 點  
y = linspace(-20, 20, 250);		% 在 y 軸 [-2,2] 之間取 25 點  
[xx,yy] = meshgrid(x, y);		% xx 和 yy 都是 25×25 的矩陣  
zz = -(xx+yy-11);		% zz 也是 25×2 的矩陣  
hold on;
surf(xx, yy, zz);				% 畫出立體曲面圖  
colormap('default')
grid on ;
axis ( [ -20 , 20 , -20 , 20 , -20 , 20] );