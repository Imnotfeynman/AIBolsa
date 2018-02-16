function w = apr(p, t, w, n)
    er=t-neu(p,w);
    ert=t-neu(p,w);
    k=0;
    ex=[];
    plo=[];
    while sum(sum(abs(er)))>0.1
        for y=1:length(ert(1,:))
            delta=n*(er(:,y))*p(:,y)';         
            w=w+delta';
            er=t-neu(p,w);
            assignin('base', 'w', w);
            end
        er=t-neu(p,w);
        ex=[ex, k];
        plo=[plo, sum(sum(abs(er)))];
        k=k+1;
        assignin('base', 'k', k);
    end
plot(ex, plo)    
end
        
        
        