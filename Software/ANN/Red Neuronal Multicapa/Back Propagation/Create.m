function [w1,w2] = Create(In_Dim,Hidden_Dim,Out_Dim)

%-------------------------------------------------------------------------%
    %Crea la matriz de pesos inicial para cada capa.
    %Entrada:
    %1,2,3_Dimenci?n de las capas de entrada, oculta y salida 
    %respectivamente.
    %Salidas:
    %1,2_Matrices de pesos para la capa oculta y de salida respectivamente.
%-------------------------------------------------------------------------% 

    w1 = (rand(Hidden_Dim,In_Dim+1))'; %Matris de la capa oculta, se suma 
    %una dimenci?n por el bias.
    w2 = (rand(Out_Dim,Hidden_Dim+1))'; %Matris de la capa de salida, se 
    %suma una dimenci?n por el bias.
    
end