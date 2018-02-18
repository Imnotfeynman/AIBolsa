function [w1,w2] = Create(In_Dim,Hidden_Dim,Out_Dim)
%% Crea las matrices de peso iniciales.
    %Entrada:
        %Dimencion de capas de entrada, oculta y salida. 
    %Salidas:
        %Matrices de pesos para la capa oculta y de salida.
%-------------------------------------------------------------------------% 

    w1 = (rand(Hidden_Dim,In_Dim+1))'; 
        %Matriz de la capa oculta, se suma una dimencion por el bias.
    w2 = (rand(Out_Dim,Hidden_Dim+1))'; 
        %Matris de la capa de salida, se suma una dimencion por el bias.
    
end