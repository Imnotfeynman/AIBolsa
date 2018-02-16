function pruevasalida=prueva(x,w1,w2) %da como salida todas las entradas 'x' procesadas por la red.
    pruevasalida=[]; 
    for h=1:length(x(1,:))
        [y0,y1,y2]=activation(x(:,h),w1,w2);
        pruevasalida=[pruevasalida,y2];
    end
end
