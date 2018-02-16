function [Error,ErrorV]=run(x,z,n,b,neuronas)
    E = 0;
    Ev = 0;
    for i=100:100:400
        [w1,w2,w1v,w2v] = create(30,neuronas,1);
        l = x;
        m = z;
        l(:,i-99:i) = [];
        m(:,i-99:i) = [];
        y = x(:,i-99:i);
        j = z(:,i-99:i);
        [w1,w2,w1v,w2v,E,Ev,Md,MdV] = backprop(l,m,y,j,n,b,w1,w2,w1v,w2v,40);
        Ev=Ev + norm(prueva(y,w1,w2)-j);    
        E=E + norm(prueva(l,w1,w2)-m);
    end
Error=norm(Ev);    
ErrorV=norm(E);   
end