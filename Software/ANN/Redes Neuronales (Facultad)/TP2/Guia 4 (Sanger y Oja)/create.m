function [w] = create(entrada,salida) %crea la matriz de pesos.
    w = (rand(entrada,salida)).*2 - 1;       
end