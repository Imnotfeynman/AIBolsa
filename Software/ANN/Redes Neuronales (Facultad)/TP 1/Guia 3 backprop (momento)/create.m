function [w1,w2,w1v,w2v] = create(entrada,oculta,salida) %crea la matriz de pesos
    w1 = (rand(oculta,entrada+1))'.*2-1; % se suma uno por el bias
    w2 = (rand(salida,oculta+1))'.*2-1; 
    w1v=0; %inicializa los w(t-1) en cero
    w2v=0;
end