function [Xsep,Zsep]=separate(x,z,w1,w2)
    Xsep=[];
    Zsep=[];
    T=(z-prueva(x,w1,w2)).^2;
    for i=1:400
        if T(:,i)>0.1
            Xsep=[Xsep, x(:,i)];
            Zsep=[Zsep, z(:,i)];
        end
    end
end

        