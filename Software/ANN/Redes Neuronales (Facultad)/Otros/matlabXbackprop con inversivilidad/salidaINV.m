function salidacapa= salidaINV(targets, capa, w1, w2)
    if capa==1
        salidacapa=targets;
    elseif capa==2
        salidacapa=tansig(w2'*targets);
    else
        salidacapa=tansig(w1'*tansig(w2'*targets));
    end
end