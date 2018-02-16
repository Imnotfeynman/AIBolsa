function [y] = activation(x, w)
    y_m = [];  %simboliza y-moño en la notacion popular.
    for i=1:length(w(1,:))
        y_m = [y_m ,norm(x-w(:,i))];
    end
    y= y_m == min(y_m);
end

    