
function Xopt = mycvxprob(H0,H1,alph,P,b)
cvx_begin
    variable X(size(H0,2),size(H0,2))
    maximize (trace(H0 * X * H0') - alph * norm(X,'fro') ^ 2)    %Complex conjugate transpose
    subject to
    if (size(H1,1)>0)
        trace(H1 * X * H1') <= b;
    end
    trace(X) <= P;
    X >= 0;
cvx_end
Xopt=X;
end 
