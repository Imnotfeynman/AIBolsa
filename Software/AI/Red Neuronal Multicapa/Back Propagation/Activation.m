function [Out,Hidden_Bias,In_Bias]=Activation(In,w1,w2)

%-------------------------------------------------------------------------%
    %Da la salida de las capas ocultas para una entrada a la red.
    %Entrada:
    %1_Vector de entrada de dimenci?n nx1.
    %2,3_Matrices de pesos de la red.
    %Salidas:
    %1_Salida final de la red de dimenci?n nx1.
    %2_Salida capa ocualta con bias.
    %3_Entrada con bias.    
%-------------------------------------------------------------------------% 

    In_Bias = [In;1]; %Entrada y bias.             
    Hidden_Bias = [(sigmoidFunction(w1'*In_Bias'));1]; %Salida capa oculta y bias.   
    Out = w2'*Hidden_Bias; %Salida de la red.
    
end