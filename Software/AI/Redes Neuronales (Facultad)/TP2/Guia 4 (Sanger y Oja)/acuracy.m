function [acura]=acuracy(X_val,X_test,z_val,z_test,w)
    mapa = out(X_test,w);
    aciertos = 0;
    for i = 1:180
        salida = (X_val(:,i)'*w)';
        distancia = [];
        for j = 1:720
            distancia = [distancia, norm(mapa(:,j)-salida)];
        end
        minimo = min(distancia);
        posicion = find(distancia==minimo);
        win = z_test(1,posicion(1,1));
        if win == z_val(1,i)
            aciertos = aciertos + 1;
        end
    end
    acura = aciertos/180;
end
            
        