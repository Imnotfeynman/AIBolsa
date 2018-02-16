function [w1,w2,error]=backpropBACH(x,z,n,w1,w2)
    t=0;
    tG=[];
    errorG=[];
    while t<1000    
    e=0;
        Dw1=0;
        Dw2=0;
        for h=randperm(length(x(1,:)))
            [Dw1,Dw2,error2]=correctionBACH(x(:,h),z(:,h),n,w1,w2,Dw1,Dw2);
            e=e+error2;
        end
        w1=w1+Dw1;
        w2=w2+Dw2;
        tG=[tG,t];
        t= t+1;
        errorG=[errorG,e];
    end
error=e;
plot(tG,errorG)
end