function [w1,w2,error] = backprop(inputs,targets,n,w1, w2)
h=0;
while h<1000
    w2=(w2'+n*salida(inputs, 2, w1, w2)*(salidaD(inputs, 3, w1,w2).*errorsalida(inputs,targets,w1, w2)'))';
    w1=(w1'+n*salida(inputs, 1, w1, w2)*(salidaD(inputs, 2, w1,w2).*erroroculta(inputs,targets,w1, w2)'))';
    error= sum(sum(abs(errorsalida(inputs,targets,w1, w2))));
    h=h+1;
    end
end

    
    