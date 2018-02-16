function salidacapa= salida(inputs, capa, w1, w2)
    if capa==1
        salidacapa=inputs;
    elseif capa==2
        salidacapa=tansig(w1*inputs);
    else
        salidacapa=tansig(w2*tansig(w1*inputs));
    end
end

       
        