function [sal]=supermap(x, w, salida_fila, salida_columna)
    sal=0;
    for i=1:length(x(1,:))
        sal = sal + mapa(x(:,i), w, salida_fila, salida_columna); 
    end
end

        