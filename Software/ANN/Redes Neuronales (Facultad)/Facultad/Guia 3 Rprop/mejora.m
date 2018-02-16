function [dw]=mejora(D,dw,DE)
    dw=dw-D.*sign(DE);
end
