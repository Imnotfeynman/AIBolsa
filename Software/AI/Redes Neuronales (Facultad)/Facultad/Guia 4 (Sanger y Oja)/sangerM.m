function [w,error] = sangerM(x,w,learning_rate) %aprendisaje con criterio de Sanger.
    t = 0; %epoca.
    T = []; %se utiliza luego para graficar.
    ERROR = []; %se utiliza luego para graficar.
    ERRORnorm = []; %se utiliza luego para graficar.
    eficience = []; %se utiliza luego para graficar.
    tri = triu(ones(length(w(1,:))));
    while t < 10 %numero maximo de epocas.
        errorw = 0;
        for h = 1 : length(x(1,:)) %para tomar un x de mi dataset.
            y = (x(:,h)'*w)'; %salida.
            triy = [];
            for i=1:3
                triy = [triy, tri(:,1).*y];
            end
            x_2 = w*triy;
            for u=1:3
                delta_w = learning_rate*(x(:,h)-x_2(:,u))*y';
                w = w + delta_w;
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