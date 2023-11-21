load in_data;
%disp(size(x,2));

for i = 1:(size(x,2))
   fprintf('data %d\n', i);
   x_=x(:,i).';        %transpose
   y_=y(:,i).';
   fcn_checker(x_,y_);
   
end
