function [Y] = mapa(x, w, salida_fila, salida_columna) %me da la salida en forma de matriz.
    y = activation(x, w);
    Y = ones(salida_fila, salida_columna);
    for j = 1:length(y(1,:))
        p = position(j, salida_columna);
        Y(p(1,1),p(1,2)) = y(1,j);
    end
end
        
