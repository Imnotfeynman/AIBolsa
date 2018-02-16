function [w1,w2,wM,Memory,Error]=Correction(In,Target,Learning_Rate,w1,w2,wM,Memory)

%-------------------------------------------------------------------------%
    %Hace una iteración de entrenamiento para una sola entrada.
    %Entrada:
    %1,2_Vector de entrada y salida del entrenamiento respectivamente de
    %dimención nx1.
    %3_Coeficiente de aprendisaje.
    %4,5_Matrices de pesos de la red.
    %Salidas:
    %1,2_Matrices de pesos para la capa oculta y de salida respectivamentes
    %entrenadas una iteración.
    %3_Error correspondiente a ese vector de entrenamiento.
%-------------------------------------------------------------------------%

    [Out,Hidden_Bias,In_Bias,Memory2]=Activation(In,w1,w2,wM,Memory); %Salidas de la red.
    e = Target-Out; %Error entre la salida y el objetivo de dimencion nx1.
    Error = norm(e); %Norma del error.
    w2 = w2 + Learning_Rate*Hidden_Bias*((1-Out.^2).*e)'; %Corrección
    %matriz de salida.
    dw1= Learning_Rate*In_Bias*((1-Hidden_Bias.^2).*(w2*e))';
    dwM= Learning_Rate*Memory*((1-Hidden_Bias.^2).*(w2*e))';
    w1 = w1 + dw1(:,1:length(dw1(1,:))-1); %Corrección matriz de capa 
    %oculta.
    wM = wM + dwM(:,1:length(dwM(1,:))-1);  %Corrección matriz de memoria.
    Memory = Memory2;

end