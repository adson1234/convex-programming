
function fcn_checker(x,y)
    if convex_chk(x,y)
        disp('convex : yes');
    else
        disp('convex : no');
    end
    if concave_chk(x,y)
        disp('concave : yes');
    else
        disp('concave : no');
    end
    if superconvex_chk(x,y)
        disp('superconvex : yes');
    else
        disp('superconvex : no');
    end
    if superconcave_chk(x,y)
        disp('superconcave : yes');
    else
        disp('superconcave : no');
    end
    if quasiconvex_chk(x,y)
        disp('quasiconvex : yes');
    else
        disp('quasiconvex : no');
    end
    if quasiconcave_chk(x,y)
        disp('quasiconcave : yes');
    else
        disp('quasiconcave : no');
    end
end

function f1 = convex_chk(x,y)
    %plot(x,y,'.','markersize',12);
    %xlabel('x');
    %ylabel('y');
    %hold on;

    mat=[transpose(x) transpose(y)];
    mat=sortrows(mat,1); %sort by x
    
    flag=true;
    slope=(mat(2,2)-mat(1,2))/(mat(2,1)-mat(1,1));
    for i = 2:(size(mat)-1)
        slope2=(mat(i+1,2)-mat(i,2))/(mat(i+1,1)-mat(i,1));
        if slope2<slope
            flag=false;
        end
        slope=slope2;
        %disp(slope);
    end
    if flag
        f1=true;
    else
        f1=false;
    end
end

function f2 = concave_chk(x,y)
   f2=convex_chk(x,-y);
   %disp([x.' y.' (-y).']);
end

function f3 = superconvex_chk(x,y)
    for i = 1:size(y,2)
        if y(i)<0
            f3=false;
            return;
        end 
        if y(i)==0
            %disp('y=0');
        end 
    end
    
    y=log(y);
    f3=convex_chk(x,y);
end

function f4 = superconcave_chk(x,y)
    for i = 1:size(y,2)
        if y(i)<0
            f4=false;
            return;
        end 
        if y(i)==0
            %disp('y=0');
        end 
    end
    
    y=log(y);
    f4=concave_chk(x,y);
end

function f5 = quasiconvex_chk(x,y)

    mat=[transpose(x) transpose(y)];
    mat=sortrows(mat,2); %sort by y
    %disp(mat);
    %plot(x,y,'.','markersize',12);
    %xlabel('x');
    %ylabel('y');
    %hold on;
    
    flag=true;
    left=mat(1,1);
    right=mat(1,1);
    for i = 2:size(mat)
        if left<mat(i,1) && mat(i,1)<right
            flag=false;
            break;
        else
            if mat(i,1)<=left
                left=mat(i,1);
            else
                right=mat(i,1);
            end
        end 
    end
    
    if flag
        f5=true;
    else
        f5=false;
    end
end

function f6 = quasiconcave_chk(x,y)
   f6=quasiconvex_chk(x,-y);
end