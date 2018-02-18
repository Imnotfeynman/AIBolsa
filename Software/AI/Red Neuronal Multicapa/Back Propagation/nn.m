%% Create Neural Network

In_Dim = 1; %numero de filas, siempre debe ser una columna.
Hidden_Dim = 1;
Out_Dim = 1; %numero de filas, siempre debe ser una columna.

[w1,w2] = Create(In_Dim,Hidden_Dim,Out_Dim);

%%  Training

Epocas = 2;
Learning_Rate = 10;
%In_Set = [1;2,2;4,4;8];
%Target_Set = [3;6;12];
[w1,w2,Error] = BackPropagation(In_Set,Target_Set,Learning_Rate,w1,w2,Epocas)

%% Uso de la red

In = pi;

[Out] = Activation(In,w1,w2)
