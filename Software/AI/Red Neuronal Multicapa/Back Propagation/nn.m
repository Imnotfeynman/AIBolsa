%% Create Neural Network

In_Dim = 2;
Hidden_Dim = 10;
Out_Dim = 1;

[w1,w2] = Create(In_Dim,Hidden_Dim,Out_Dim);

%%  Training

Epocas = 50;
Learning_Rate = 1;
%In_Set = [1;2,2;4,4;8];
Target_Set = [3;6;12];

[w1,w2,Error] = BackPropagation(In_Set,Target_Set,Learning_Rate,w1,w2,Epocas);
disp(w1,w2,Error)

%% Uso de la red

In = [1;2];

[Out] = Activation(In,w1,w2);
disp(Out)
