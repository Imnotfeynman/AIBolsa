function error = ap(pmatriz,tmatriz,w,b)
asalida = neu(pmatriz,w,b);
e = tmatriz - asalida;
k=0
plot=[]
ex=[]
assignin('base', 'k', k);
while sum(sum(abs(e))) ~= 0
    k= k+1;
    assignin('base', 'k', k);
    for d=1:length(pmatriz(:,1))
        w = w + pmatriz(d,:)'*e(d,:);
        b = b + e(d,:);
        assignin('base', 'w', w);
        assignin('base', 'b', b);
        asalida = neu(pmatriz,w,b);
        e = tmatriz - asalida;
    end
    ex=[ex, k]
    plot=[plot, sum(sum(abs(e)))]
    if k<100
    else 
        e=0
        k='fallo'
        assignin('base', 'k', k);
    end
plot(ex,plot)    
end
     
    
    
    
    