function [net,salida]= neu2(p, w)
    net=(p'*w)';
    salida= tansig(net);
end