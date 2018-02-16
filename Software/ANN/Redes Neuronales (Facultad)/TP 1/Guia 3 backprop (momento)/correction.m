function [w1,w2,w1v,w2v,error]=correction(xh,zh,n,b,w1,w2,w1v,w2v) %xh en una entrada en particular del conjunto 'x'
    [y0,y1,y2] = activation(xh,w1,w2);  
    E = zh-y2;
    error = norm(E); 
    w2 = w2 + n*y1*((1-y2.^2).*E)'+b*w2v; %(1-y2.^2) es la derivada de la funcion en activation capa salida
    w2v= n*y1*((1-y2.^2).*E)'; %guarda los w viejos para ser usados en el momentum
    dw1= n*y0*((1-y1.^2).*(w2*E))'; %(1-y1.^2) es la derivada de la funcion en activation capa oculta
    w1 = w1 + dw1(:,1:length(dw1(1,:))-1)+b*w1v;
    w1v= dw1(:,1:length(dw1(1,:))-1); %guarda los w viejos para ser usados en el momentum
end
    