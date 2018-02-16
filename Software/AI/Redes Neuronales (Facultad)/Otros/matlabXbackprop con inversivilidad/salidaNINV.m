function salidacapaN= salidaNINV(targets, capa, w1,w2)
    if capa==1
        salidacapaN=targets;
    elseif capa==2
        salidacapaN=w2'*targets;
    else
        salidacapaN=w1'*tansig(w2'*targets);
    end
end