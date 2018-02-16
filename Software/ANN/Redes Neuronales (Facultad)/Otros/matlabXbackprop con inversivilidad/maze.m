function [w1,w2,error] = maze(inputs,targets,n1,n2,w1, w2)
h=0;
while h<1000
    errorw2 = n1*salida(inputs, 2, w1, w2)*(salidaD(inputs, 3, w1,w2).*errorsalida(inputs,targets,w1, w2)');
    errorw1 = n1*salida(inputs, 1, w1, w2)*(salidaD(inputs, 2, w1,w2).*erroroculta(inputs,targets,w1, w2)');
    errorw1INV = n2*salidaINV(targets, 2, w1, w2)*(salidaDINV(targets, 3, w1,w2).*errorsalidaINV(inputs,targets,w1, w2)');
    errorw2INV = n2*salidaINV(targets, 1, w1, w2)*(salidaDINV(targets, 2, w1,w2).*errorocultaINV(inputs,targets,w1, w2)');
    w2=(w2'+ errorw2 + errorw2INV')';
    w1=(w1'+ errorw1 + errorw1INV')';
    error= sum(sum(abs(errorsalida(inputs,targets,w1, w2))));
    h=h+1;
    end
end