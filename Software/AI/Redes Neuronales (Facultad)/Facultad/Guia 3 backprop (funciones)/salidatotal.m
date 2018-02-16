function [salidaTOT]=salidatotal(x,w1,w2) 
    salidaTOT=[]
    for h=1:length(x(1,:))
        y0 = [x(:,h);1];              
        y1 = [(tansig(w1'*y0));1];    
        y2 = (tansig(w2'*y1))';
        salidaTOT=[salidaTOT;y2]
    end
    salidaTOT=salidaTOT'     
end