function [w1,w2,wM,Memory] = Create(In_Dim,Hidden_Dim,Out_Dim)

%-------------------------------------------------------------------------%
    %Crea la matriz de pesos inicial para cada capa para la red de Elman.
    %Entrada:
    %1,2,3_Dimención de las capas de entrada, oculta y salida 
    %respectivamente.
    %Salidas:
    %1,2_Matrices de pesos para la capa oculta y de salida respectivamente.
    %3_Matriz de pesos de memoria de la capa oculta.
    %4_Matriz de memoria de la capa oculta.
%-------------------------------------------------------------------------% 

    w1 = (rand(Hidden_Dim,In_Dim+1))'; %Matris de la capa oculta, se suma 
    %una dimención por el bias.
    w2 = (rand(Out_Dim,Hidden_Dim+1))'; %Matris de la capa de salida, se 
    %suma una dimención por el bias.
    wM = (rand(Hidden_Dim,Hidden_Dim))'; %Matris de pesos dememoria de la 
    %capa oculta.
    Memory = zeros(Hidden_Dim,1); %Matriz de memoria de la capa oculta.
    
end