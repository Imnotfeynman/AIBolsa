function [w1,w2] = create(entrada,oculta,salida)
    w1 = (rand(oculta,entrada+1))'; % se suma uno por el bias
    w2 = (rand(salida,oculta+1))'; 
end