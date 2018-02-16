function [D] = distribution(jW, w, salida_columna, disp) %me da la distribucion de correccion de la salida  
    D = [];                                              %para cada neurona vecina a la ganadora.
    p_jW = position(jW, salida_columna); %jW es la posicion de la salida ganadora.
    for j = 1:length(w(1,:))
        p_j = position(j, salida_columna);
        D = [D, exp(-norm(p_j-p_jW)^2/(2*disp^2))];
    end
end

            
            
            
            
            
            
            
            
            
       
          
            
           
        
    
    