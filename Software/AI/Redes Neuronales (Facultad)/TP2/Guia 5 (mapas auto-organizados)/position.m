function [p] = position(j, salida_columna)
    p = [floor((j-1)/salida_columna) + 1 , (mod((j-1), salida_columna) +1)]; %me da la posicision de la 
end                                                                          %posicion j de la salida
                                                                             %vista como matriz.
    