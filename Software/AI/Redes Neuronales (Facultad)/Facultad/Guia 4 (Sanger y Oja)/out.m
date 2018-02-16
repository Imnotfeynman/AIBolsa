function [yj] = out(xi,w) %salida de la red. se puede usar tanto para una sola entrada como para todo el dataset.
    yj = (xi'*w)'; %salida sale como vector columna.
end