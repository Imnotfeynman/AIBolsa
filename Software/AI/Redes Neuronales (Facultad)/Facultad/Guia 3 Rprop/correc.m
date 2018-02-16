function [dw1,dw2,E1V,E2V]=correc(xh,zh,w1,w2,dw1,dw2,E1V,E2V,D1,D2)
    [y0,y1,y2] = activation(xh,w1,w2);
    E2 = zh-y2;
    E1 = w2*E2;
    DE2= y1*E2';
    DE1= y0*E1(1:length(E1(:,1))-1,1)';
    DEC2= DE2.*E2V;
    DEC1= DE1.*E1V;
    [D2]= cambio(DEC2,D2);
    [D1]= cambio(DEC1,D1);
    [dw2]=mejora(D2,dw2,DE2);
    [dw1]=mejora(D1,dw1,DE1);
    E2V=DE2;
    E1V=DE1;
end

   