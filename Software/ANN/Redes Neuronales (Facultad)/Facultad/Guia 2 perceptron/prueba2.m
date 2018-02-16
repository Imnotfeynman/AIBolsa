function [aciertos, errados] = prueba2(x,z,w)
    aciertos=[0,0,0,0,0,0,0,0,0,0];
    errados=[0,0,0,0,0,0,0,0,0,0];
    for i=1:800
        [net,salida]= neu2(x(i,:)', w);
        salida=salida';
        for t=1:10
            if salida(1,t)<0.5
                salida(1,t)=0;
            else
                salida(1,t)=1;
            end
        end
        v = find(z(i,:)==max(max((z(i,:)))));
        if salida==z(i,:)
            aciertos(1,v)=aciertos(1,v)+1;
        else
            errados(1,v)=errados(1,v)+1;
        end
    end
end