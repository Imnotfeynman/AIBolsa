function [w1,w2,error,evv]=backpropBACH(x,z,v,u,n,w1,w2,c,g)
    t=0;
    tG=[];
    errorG=[];
    errorV=[];
    while t<1000    
    e=0;
    ev=0;
        Dw1=0;
        Dw2=0;
        for h=randperm(length(x(1,:)))
            [Dw1,Dw2,error2]=correctionBACH(x(:,h),z(:,h),n,w1,w2,Dw1,Dw2);
            e=e+error2;
        end
        w1=w1+Dw1;
        w2=w2+Dw2;
        tG=[tG,t];
        for h=1:length(v(1,:))
        [y0,y1,y2]=activation(v(:,h),w1,w2);
        k=(u(:,h)-y2);
        ev= ev+norm(k);
        end
        t= t+1;
        errorG=[errorG,e];
        errorV=[errorV,ev]; 
    end
error=e;
evv=ev
plot(tG,errorG,tG,errorV)
salidaplot=[];
for h=1:length(c(1,:))
[y0,y1,y2]=activation(c(:,h),w1,w2); 
salidaplot=[salidaplot,y2];
end
plot(c,g,c,salidaplot)
end