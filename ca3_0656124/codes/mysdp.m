
function Xopt = mysdp(q,F,A,b)
cvx_begin
    variable X(size(q,1),size(q,1))
    minimize (1/2 * q' * X * q + trace(F' * X))
    subject to
    if (size(A,2)>0)
        trace(A' * X) <= b;
    end
    X >= 0;
cvx_end
xopt=X;
end 
