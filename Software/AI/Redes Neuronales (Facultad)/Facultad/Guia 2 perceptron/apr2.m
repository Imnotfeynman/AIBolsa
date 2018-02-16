function w = apr2(p, t, w)
    [net,salida]= neu2(p, w);
    er=t-salida;
    k=1;
    ex=[];
    plo=[];
    detener=0;
    while detener<10000
        cargado = k/100
        n=1/sqrt(k);
        detener = detener + 1;
        for y=1:length(er(1,:))
            delta=n*(er(:,y)).*(1 - tanh(net(:,y)).^2)*p(:,y)'  ;    
            w=w+delta';
            [net,salida]= neu2(p, w);
            er=t-salida;
        end
    [net,salida]= neu2(p, w);    
    er=t-salida;
    ex=[ex, k];
    [aciertos, errados] = prueba(p',t',w);
    plo=[plo, aciertos];
    k=k+1;      
    end
errorfinal=sum(sum(abs(er)))    
plot(ex, plo)
end