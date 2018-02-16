function [y0,y1,y2]=activation(xh,w1,w2) %salidas de cada capa correspondiente
    y0 = [xh;1];              
    y1 = [tansig((w1'*y0));1];  %funcion activacion capa oculta  
    y2 = logsig(w2'*y1);      %funcion activacion capa salida 
end