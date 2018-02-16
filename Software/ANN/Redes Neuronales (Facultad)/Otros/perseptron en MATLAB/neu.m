function asalida = neu(pmatriz,w,b)
asalida=[];
for d=1:length(pmatriz(:,1))    
    p=pmatriz(d,:);
    a = p*w + b;
    asalida=[asalida;a];
end
for g=1:length(asalida(:,1))
    for l=1:length(asalida(1,:))
        if asalida(g,l)>=0
            asalida(g,l)=1;
        else
            asalida(g,l)=0;
        end
        
    end
     
end
