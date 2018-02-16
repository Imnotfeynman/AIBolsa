function w = apr2(p, t, w, n)
    [net,salida]= neu2(p, w);
    er=t-salida;
    k=0;
    ex=[];
    plo=[];
    while sum(sum(abs(er)))>0.1
        for y=1:length(er(1,:))
            delta=n*(er(:,y)).*(1 - tanh(net(:,y)).^2)*p(:,y)'  ;    
            w=w+delta';
            [net,salida]= neu2(p, w);
            er=t-salida;
        end
    [net,salida]= neu2(p, w);    
    er=t-salida;
    ex=[ex, k];
    plo=[plo, sum(sum(abs(er)))];
    k=k+1;      
    end
errorfinal=sum(sum(abs(er)))    
plot(ex, plo)
end