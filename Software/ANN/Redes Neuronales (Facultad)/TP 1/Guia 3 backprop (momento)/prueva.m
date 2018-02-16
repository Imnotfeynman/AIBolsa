function pruevasalida=prueva(x,w1,w2) %da como salida todas las entradas 'x' procesadas por la red.
    pruevasalida=[]; 
    for h=1:length(x(1,:))
        y0 = [x(:,h);1];              
        y1 = [(tansig(w1'*y0));1];    
        y2 = (tansig(w2'*y1));
        pruevasalida=[pruevasalida,y2];
    end
end
