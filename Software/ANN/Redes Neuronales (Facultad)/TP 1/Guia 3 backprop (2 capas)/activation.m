function [y0,y1,y2]=activation(xh,w1,w2) 
    y0 = [xh;1];              
    y1 = [(tansig(w1'*y0));1];    
    y2 = (tansig(w2'*y1));
end