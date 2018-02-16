function salidacapaD= salidaD(inputs, capa, w1,w2)
    if capa==1
        salidacapaD=inputs;
    elseif capa==2
        salidacapaD=1-tansig((w1*inputs)').^2;
    else
        salidacapaD=1-tansig((w2*tansig(w1*inputs))').^2;
    end
end