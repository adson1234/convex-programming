%{
c = [-1 -1/3]';
A = [1 1/4];
b = 1/2;
C = [1 1
    1 1/4
    1 -1
    -1/4 -1
    -1 -1
    -1 1];

d = [2 1 2 1 -1 2]';

disp(mylpf(c,A,b,C,d));
%}

function xopt = mylpf(c,A,b,C,d)
cvx_begin
    variable x(size(c,1))
    minimize ( c' * x )
    subject to
    if (size(A,1)>0)
        A * x == b;
    end
    if (size(C,1)>0)
        C * x <= d;
    end
    x >= 0;
cvx_end
xopt=x;
end 
