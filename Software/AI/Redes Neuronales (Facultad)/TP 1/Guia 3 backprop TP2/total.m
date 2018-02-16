function [V]=total(x,z,n,b)
    eR=[];
    eV=[];
    in=[]
    V=0
    for i=1:3:90
        [Error,ErrorV]=run(x,z,n,b,i);
        eR=[eR,Error];
        eV=[eV,ErrorV];
        in=[in,i];
    end
plot(in,eR,in,eV)    
end

    