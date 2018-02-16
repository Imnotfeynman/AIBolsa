function [w,ERROR2] = script(w,X)
    
    ERROR = [];
    
    %[w] = create(3,9,9);
    
    [w, error] = kohonen(X, w, 9 , 1, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.001);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.4, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.4, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.2, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.2, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.1, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.1, 0.01);
    ERROR = [ERROR, error];
    
    [w, error] = kohonen(X, w, 9 , 1, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.001);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.4, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.4, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.2, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.2, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.1, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.1, 0.01);
    ERROR = [ERROR, error];
    
    [w, error] = kohonen(X, w, 9 , 1, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 1, 0.001);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.4, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.4, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.2, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.2, 0.01);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.1, 0.1);
    ERROR = [ERROR, error];
    [w, error] = kohonen(X, w, 9 , 0.1, 0.01);
    ERROR = [ERROR, error];
    
    ERROR2 = ERROR;
    
end
    