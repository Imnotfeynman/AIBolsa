function [w1,w2,w1v,w2v,error]=correction(xh,zh,n,w1,w2,w1v,w2v)
    [y0,y1,y2] = activation(xh,w1,w2);  
    E = zh-y2;
    error = norm(E);
    w2 = w2 + n*y1*((1-y2.^2).*E)'+w2v;
    %w2v= n*y1*((1-y2.^2).*E)';
    dw1= n*y0*((1-y1.^2).*(w2*E))';
    w1 = w1 + dw1(:,1:length(dw1(1,:))-1)+w1v;
   % w1v= dw1(:,1:length(dw1(1,:))-1);
end
    