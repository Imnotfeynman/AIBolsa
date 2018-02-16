function [Dw1,Dw2,error]=correctionBACH(xh,zh,n,w1,w2,Dw1,Dw2)
    [y0,y1,y2] = activation(xh,w1,w2);  
    E = zh-y2;
    error = norm(E);
    Dw2 = Dw2 + n*y1*((1-y2.^2).*E)';
    dw1= n*y0*((1-y1.^2).*(w2*E))';
    Dw1 = Dw1 + dw1(:,1:length(dw1(1,:))-1);
end