function [aciertos, errados] = prueba(x,z,w)
    aciertos=0;
    errados=0;
    for i=1:600
        [net,salida]= neu2(x(i,:)', w);
        salida=salida';
        for t=1:10
            if salida(1,t)<0.5
                salida(1,t)=0;
            else
                salida(1,t)=1;
            end
        end
        if salida==z(i,:)
            aciertos=aciertos+1;
        else
            errados=errados+1;
        end
    end
end

    