function [w1,w2,w1v,w2v] = create(entrada,oculta,salida)
    w1 = (rand(oculta,entrada+1))'; % se suma uno por el bias
    w2 = (rand(salida,oculta+1))'; 
    w1v=0;
    w2v=0;
end