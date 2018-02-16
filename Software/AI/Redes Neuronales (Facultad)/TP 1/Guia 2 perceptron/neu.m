function salida= neu(p, w)
    n=p'*w;
    for x=1:length(n(:,1))
        for y=1:length(n(1,:))
            if n(x,y)>=0
                n(x,y)=1;
            else
                n(x,y)=0;
            end
        end
    end
salida=n';    
end
