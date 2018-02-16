function [error] = eficiencia(x,w) %muestra la norma entre la entrada real y la estimada.
    y = (x'*w)';
    x2 = (y'*w')';
    error = norm((x-x2))/length(x(:,1));
end

    