function [w,error] = sanger(x,w,learning_rate) %aprendisaje con criterio de Sanger.
    t = 0; %epoca.
    T = []; %se utiliza luego para graficar.
    ERROR = []; %se utiliza luego para graficar.
    ERRORnorm = []; %se utiliza luego para graficar.
    eficience = []; %se utiliza luego para graficar.
    while t < 10 %numero maximo de epocas.
        errorw = 0;
        for h = 1 : length(x(1,:)) %para tomar un x de mi dataset.
            delta_w = zeros(length(w(:,1)),length(w(1,:))); %reinicia la matriz de aprendisaje.
            y = (x(:,h)'*w)'; %salida.
            for j = 1 : length(w(1,:)) %tomo valor de 1 hasta el tamaño de mi salida.
                for i= 1 : length(w(:,1)) %tomo valor de 1 hasta el tamaño de mi entrada.
                    x_2 = 0; %x_2 simboliza equis moño en la notacion popular.
                    for k=1:j %utilizo criterio de Sanger.
                        x_2 = x_2 + y(k,:)*w(i,k);
                    end
                    delta_w(i,j) = learning_rate*(x(i,h) - x_2)*y(j,:);
                end
            end
            w = w + delta_w; %actualiza los pesos.
            errorw = errorw + (delta_w./learning_rate).*2; %divido por el factor de entrenamiento porque sino
        end                                                %para eta muy chico el error se hace muy chico.
        eficience = [eficience, eficiencia(x,w)]; %muestra la norma entre la entrada real y la estimada.
        ERRORnorm = [ERRORnorm,norm(w'*w-eye(length(w(1,:))))]; 
        T = [T,t];
        t = t + 1; %aumenta una epoca.
        error = norm(errorw/length(x(1,:))); % divido por el tamaño del dataset la suma de los errores.
        ERROR = [ERROR,error];                    
    end
plot(T,ERROR,'b',T,ERRORnorm,'r--',T,eficience,'g:')
end
                        
            
            
        