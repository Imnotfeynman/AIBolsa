function [w] = create(entrada, salida_fila, salida_columna) %crea la matriz de pesos.
    w = (rand(entrada, salida_fila * salida_columna)).*2 - 1; %salida_fila y salida_ columna es el tamaño       
end                                                           %de la matriz de salida.