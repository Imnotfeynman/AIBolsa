function [D]=cambio(DEC,D)
    SE=sign(DEC);
    for i=1:length(SE(:,1))
        for t=1:length(SE(1,:))
            if SE(i,t)==sign(1)
                SE(i,t)=1.2*SE(i,t);
            elseif SE(i,t)==sign(-1)
                SE(i,t)=-0.5*SE(i,t);
            else
            end
        end
    end
D=D.*SE;    
end

    