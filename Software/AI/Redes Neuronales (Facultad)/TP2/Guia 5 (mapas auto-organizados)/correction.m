function [w, e] = correction(x, w, salida_columna, disp, learning_rate) %aprendisaje para una sola entrada y epoca.
    y = activation(x, w);
    jW = find(y==1); %posicion de la neurona ganadora.
    d = distribution(jW, w, salida_columna, disp);
    y_m2 = [];
    y_m2 = x * ones(1, length(w(1,:))) - w;
    D = [];
    D = ones(length(w(:,1)),1) * d;
    delta2 = D.*y_m2;
    delta = learning_rate*D.*y_m2; %el producto de D contra y_m2 es raro, supongo que es asi.
    w = w + delta;
    e = norm(delta2);
end