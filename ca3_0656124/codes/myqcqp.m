
function xopt = myqcqp(P_0,q_0,P_1,q_1,r_1,A,b)
cvx_begin
    variable x(size(b,1))
    minimize (1/2 * x' * P_0 * x + q_0' * x)
    subject to
    if (size(A,1)>0)
        A * x == b;
    end
    if (size(q_1,1)>0)
        1/2 * x' * P_1 * x + q_1' * x + r_1 <= 0;
    end
cvx_end
xopt=x;
end 
