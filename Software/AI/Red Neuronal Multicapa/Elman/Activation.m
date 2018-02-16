function [Out,Hidden_Bias,In_Bias,Memory]=Activation(In,w1,w2,wM,Memory)

%-------------------------------------------------------------------------%
    %Da la salida de las capas ocultas para una entrada a la red.
    %Entrada:
    %1_Vector de entrada de dimención nx1.
    %2,3_Matrices de pesos de la red.
    %4_Matriz de pesos de memoria de la capa oculta.
    %5_Memoria de la capa oculta.
    %Salidas:
    %1_Salida final de la red de dimención nx1.
    %2_Salida capa ocualta con bias.
    %3_Entrada con bias. 
    %4_Nueva matriz de memoria de la capa oculta.
%-------------------------------------------------------------------------% 

    In_Bias = [In;1]; %Entrada y bias.
    Memory = (tansig(w1'*In_Bias+wM'*Memory)); %Salida capa oculta, nueva memoria.
    Hidden_Bias = [Memory;1]; %Salida capa oculta y bias.
    Out = tansig(w2'*Hidden_Bias); %Salida de la red.
    
end