function [w1,w2,wM,Error]=Elman(In_Set,Target_Set,Learning_Rate,w1,w2,wM,Memory,Epocas)

%-------------------------------------------------------------------------%
    %Realiza el entrenamiento de la red.
    %Entrada:
    %1,2_Set de entrenamiento. Entradas y objetivos respectivamente.
    %3_Coeficiente de aprendisaje.
    %4_Matrices de pesos de la red.
    %Salidas:
    %1,2_Matrices de pesos para la capa oculta y de salida respectivamentes
    %entrenadas todas las epocas.
    %3_Error correspondiente al set de entrenamiento.
%-------------------------------------------------------------------------% 

    Error_Vector=[]; %Vector de error de entrenamiento por epoca.
    Memory2 = Memory;
    for t=1:Epocas %Itero en la cantidad de epocas.
    Memory = Memory2;    
    Error_Total=0; %Error total para una epoca
    
        for h=1:length(In_Set(1,:)) %Itero en todo el set de entrenamiento.
            
            [w1,w2,wM,Memory,Error]=Correction(In_Set(:,h),Target_Set(:,h),Learning_Rate,w1,w2,wM,Memory);
            %Corrijo los pesos para una entrada del set de entrenamiento.
            Error_Total = Error_Total + Error;
            %Sumo el error del entrenamiento al error total de la epoca.
            
        end
        
        Error_Vector = [Error_Vector,Error_Total]; %#ok<AGROW>       
        
    end
    
    Error = Error_Total; %Error del ultimo entrenamiento.
    plot(1:size(Error_Vector,2),Error_Vector) %Grafico la evolución del error.

end