function [w1,w2,error]=backprop(x,z,n,w1,w2)
    t=0;
    tG=[];
    errorG=[];
    while t<100    
    e=0;
        for h=randperm(length(x(1,:)))
            [w1,w2,error2]=correction(x(:,h),z(:,h),n,w1,w2);
            e=e+error2;
        end
        tG=[tG,t];
        t= t+1;
        errorG=[errorG,e];
    end
error=e;
plot(tG,errorG)
end