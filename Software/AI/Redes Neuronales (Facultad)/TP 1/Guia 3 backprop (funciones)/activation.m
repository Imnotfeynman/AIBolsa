function [y0,y1,y2]=activation(xh,w1,w2) 
    y0 = [xh;1];              
    y1 = [(tansig(w1'*y0));1]; %BIPOLAR     
    y2 = w2'*y1;     %BIPOLAR 
    %y1 = [(logsig(w1'*y0));1]; %BIANRIO    
    %y2 = (logsig(w2'*y1));     %BIANRIO
end