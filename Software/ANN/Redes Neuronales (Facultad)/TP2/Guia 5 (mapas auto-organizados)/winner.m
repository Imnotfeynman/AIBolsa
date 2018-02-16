function [wins] = winner(x1,x2,x3,x4,x5,x6,x7,x8,x9,w,salida_fila,salida_columna)
    s1 = supermap(x1, w, salida_fila, salida_columna);
    s2 = supermap(x2, w, salida_fila, salida_columna);
    s3 = supermap(x3, w, salida_fila, salida_columna);
    s4 = supermap(x4, w, salida_fila, salida_columna);
    s5 = supermap(x5, w, salida_fila, salida_columna);
    s6 = supermap(x6, w, salida_fila, salida_columna);
    s7 = supermap(x7, w, salida_fila, salida_columna);
    s8 = supermap(x8, w, salida_fila, salida_columna);
    s9 = supermap(x9, w, salida_fila, salida_columna);
    for f = 1:length(s1(:,1))
        for c = 1:length(s1(1,:))
            sal = [s1(f,c),s2(f,c),s3(f,c),s4(f,c),s5(f,c),s6(f,c),s7(f,c),s8(f,c),s9(f,c)];
            if norm(sal) ~= 0   
                winer = find(sal==max(sal));
                t = randperm(length(winer(1,:)),1)
                winer = winer(1,t);
                s1(f,c) = winer;
            else
                s1(f,c) = 0;
            end
        end
    end
    wins = s1;
end