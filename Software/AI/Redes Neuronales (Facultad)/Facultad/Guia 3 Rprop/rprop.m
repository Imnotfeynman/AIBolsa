function [w1,w2,dw1,dw2,E1V,E2V,e]=rprop(x,z,w1,w2,dw1,dw2,E1V,E2V,D1,D2)
    e=1;
    t=0;
    E=[];
    T=[];
    while t<100   
        e=0;
        for i=1:length(x(1,:))
            [dw1,dw2,E1V,E2V]=correc(x(:,i),z(:,i),w1,w2,dw1,dw2,E1V,E2V,D1,D2);
            w1=w1+dw1;
            w2=w2+dw2;
            [y0,y1,y2]=activation(x(:,i),w1,w2);
            e=e+norm(z(:,i)-y2);
        end
    T=[T,t];
    t=t+1;
    E = [E,e];    
    end
plot(T,E)
end