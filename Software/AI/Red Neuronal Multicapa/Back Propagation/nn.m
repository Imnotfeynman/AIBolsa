%% Create Neural Network

In_Dim = 2; %numero de filas, siempre debe ser una columna.
Hidden_Dim = 5;
Out_Dim = 1; %numero de filas, siempre debe ser una columna.

[w1,w2] = Create(In_Dim,Hidden_Dim,Out_Dim);

%%  Training

Epocas = 8;
Learning_Rate = 0.9;
In_Set = [2,3,4,5,6,7,8,9;2,3,4,5,6,7,8,9];
Target_Set = [1;0;1;0;1;0;1;0];
[w1,w2,Error] = BackPropagation(In_Set,Target_Set,Learning_Rate,w1,w2,Epocas)

%% Uso de la red

In = [8;8];

[Out] = Activation(In,w1,w2)
