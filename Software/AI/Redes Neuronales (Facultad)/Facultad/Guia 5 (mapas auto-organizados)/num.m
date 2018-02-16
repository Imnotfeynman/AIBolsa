function [T] = num(X,w)
t1=0;
t2=0;
t3=0;
t4=0;
T=[];
for i=31:40
    [Y] = mapa(X(:,i), w, 10,10);
    [c,y]=find(Y==1);
    %c=X(1,i);
    %y=X(2,i);
    if c>9 %era 9
        if y<11 %era 11
            t1=t1+1;
        else
           t2=t2+1;        
        end           
    else
        if y<11
            t3=t3+1;
        else
            t4=t4+1;
        end
    end
end
T=[t1,t2,t3,t4];
end