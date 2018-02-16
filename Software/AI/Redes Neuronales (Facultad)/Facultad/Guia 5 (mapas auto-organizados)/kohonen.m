function [w, error] = kohonen(x, w, salida_columna, disp, learning_rate) %funcion de entrenamiento
    error_plot = []; %se utiliza para el plot.
    epoca_plot = []; %se utiliza para el plot.
    epoca = 0;
    while epoca < 1
        error = 0;
        for i = 1:length(x(1,:))
            [w, e] = correction(x(:,i), w, salida_columna, disp, learning_rate);
            error = error + e;
        end
        epoca_plot = [epoca_plot, epoca];
        error_plot = [error_plot, error];
        epoca = epoca + 1;
    end
    plot(epoca_plot, error_plot)
end

    