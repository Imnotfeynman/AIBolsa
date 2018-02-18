function [Out,Hidden_Bias,In_Bias]=Activation(In,w1,w2) %original
%% Aplica la red.
    %Entrada:
        %Vector de entrada de dimencion nx1.
        %Matrices de pesos de la red (entrenada).
    %Salida:
        %Salida final de la red.
        %Salida capa ocualta con bias.
        %Entrada con bias.    
%%
    In_Bias = [In;1]; %Entrada y bias.             
    %Hidden_Bias = [(sigmoidFunction(w1'*In_Bias'));1]; %Salida capa oculta
    %y bias. Original
    Hidden_Bias = [(sigmoidFunction(w1'*In_Bias));1]; %Salida capa oculta y bias.   

    Out = w2'*Hidden_Bias; %Salida de la red.
    
end