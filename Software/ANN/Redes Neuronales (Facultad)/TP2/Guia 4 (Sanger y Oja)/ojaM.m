function [w,error] = ojaM(x,w,learning_rate) %aprendisaje con criterio de Oja.
    t = 0; %epoca.
    T = []; %se utiliza luego para graficar.
    ERROR = []; %se utiliza luego para graficar.
    ERRORnorm = []; %se utiliza luego para graficar.
    eficience = []; %se utiliza luego para graficar.
    while t < 200 %numero maximo de epocas.
        %learning_rate = -0.00004*t+0.1; 
        errorw = 0;
        for h = 1 : length(x(1,:)) %para tomar un x de mi dataset.
            y = (x(:,h)'*w)'; %salida.
            x_2 = w*y;
            delta_w = (x(:,h)-x_2)*y';
            w = w + learning_rate*delta_w; %actualiza los pesos.
            errorw = errorw + (delta_w).*2; %divido por el factor de entrenamiento porque sino
        end                                                %para eta muy chico el error se hace muy chico.
        %eficience = [eficience, eficiencia(x,w)]; %muestra la norma entre la entrada real y la estimada.
        ERRORnorm = [ERRORnorm,norm(w'*w-eye(length(w(1,:))))]; 
        T = [T,t];
        t = t + 1; %aumenta una epoca.
        error = norm(errorw/length(x(1,:))); % divido por el tamaño del dataset la suma de los errores.
        ERROR = [ERROR,error];
        end
plot(T,ERROR,'b',T,ERRORnorm,'r--')
end