function salidacapaD= salidaDINV(targets, capa, w1,w2)
    if capa==1
        salidacapaD=targets;
    elseif capa==2
        salidacapaD=1-tansig((w2'*targets)').^2;
    else
        salidacapaD=1-tansig((w1'*tansig(w2'*targets))').^2;
    end
end