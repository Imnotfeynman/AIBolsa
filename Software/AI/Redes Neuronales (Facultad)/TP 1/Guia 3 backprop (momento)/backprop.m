function [w1,w2,w1v,w2v,error,errorvalidation,Mdesv,MdesvVal]=backprop(x,z,u,v,n,b,w1,w2,w1v,w2v)
    t=0;
    tG=[];
    errorG=[];
    errorV=[];
    largez=length(z(1,:));
    largev=length(v(1,:));
    while t<1000 %numero de intentos
    e=0;
    errorvalidation=0;
        for h=randperm(length(x(1,:)))
            [w1,w2,w1v,w2v,error2]=correction(x(:,h),z(:,h),n,b,w1,w2,w1v,w2v);
            e=e+error2;
        end
        tG=[tG,t];
        t= t+1;
        errorG=[errorG,e/largez]; %guarda el error medio
    for h=randperm(length(u(1,:)))
        [y0,y1,y2]=activation(u(:,h),w1,w2);
        errorvalidation = errorvalidation+norm(v(:,h)-y2); %calcula el error de la validacion
    end
    errorV=[errorV,errorvalidation/largev]; %guarda el error medio de la validacion
    end
errorvalidation=errorvalidation/largev;    
error=e/largez;
Mdesv=max((z-prueva(x,w1,w2)).*sign(z-prueva(x,w1,w2))); %calcula la maxima desviacion de error de una salida
MdesvVal=max((v-prueva(u,w1,w2)).*sign(v-prueva(u,w1,w2))); %calcula la maxima desviacion de error de una salida
plot(tG,errorG,tG,errorV)
end