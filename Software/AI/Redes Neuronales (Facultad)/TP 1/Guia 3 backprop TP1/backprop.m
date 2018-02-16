function [w1,w2,w1v,w2v,E,Ev,Md,MdV,errorG,errorV]=backprop(x,z,u,v,n,b,w1,w2,w1v,w2v,Max)
    E=sum((prueva(x,w1,w2)-z).*sign((prueva(x,w1,w2)-z)))
    Ev=sum((prueva(u,w1,w2)-v).*sign((prueva(u,w1,w2)-v)))
    t=0;
    tG=[];
    errorG=[];
    errorV=[];
    while t<Max %numero de intentos
    e=0;
    Ev=0;
        for h=randperm(length(x(1,:)))
            [w1,w2,w1v,w2v,error2]=correction(x(:,h),z(:,h),n,b,w1,w2,w1v,w2v);
        end
    tG=[tG,t];
    t= t+1;
    e=sum((prueva(x,w1,w2)-z).*sign((prueva(x,w1,w2)-z)));
    errorG=[errorG,e]; %guarda el error medio
    Ev=sum((prueva(u,w1,w2)-v).*sign((prueva(u,w1,w2)-v)));
    errorV=[errorV,Ev]; %guarda el error medio de la validacion
    end
Ev=sum((prueva(u,w1,w2)-v).*sign((prueva(u,w1,w2)-v)));   
E=sum((prueva(x,w1,w2)-z).*sign((prueva(x,w1,w2)-z)));
errorG=errorG;
errorV=errorV;
Md=max(max((z-prueva(x,w1,w2)).*sign(z-prueva(x,w1,w2)))); %calcula la maxima desviacion de error de una salida
MdV=max(max((v-prueva(u,w1,w2)).*sign(v-prueva(u,w1,w2)))); %calcula la maxima desviacion de error de una salida
plot(tG,errorG,tG,errorV)
end