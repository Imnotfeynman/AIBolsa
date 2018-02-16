function salidacapaN= salidaN(inputs, capa, w1,w2)
    if capa==1
        salidacapaN=inputs;
    elseif capa==2
        salidacapaN=w1*inputs;
    else
        salidacapaN=w2*tansig(w1*inputs);
    end
end