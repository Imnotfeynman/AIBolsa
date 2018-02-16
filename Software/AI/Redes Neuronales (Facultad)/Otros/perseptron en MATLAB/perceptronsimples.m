Nentrada = input('intique el tamaño de su entrada: ');
Nsalida = input('intique el tamaño de su salida: ');
w= ones(Nentrada,Nsalida);
b= ones(1,Nsalida);
pmatriz = input('ingrese sus entradas en forma vectorial: ');
tmatriz = input('ingrese sus salidas en forma vectorial: ');

asalida = neu(pmatriz,w,b);

e = tmatriz - asalida;
NumeroDeIntentos=0;
while sum(sum(abs(e))) ~= 0
    NumeroDeIntentos=NumeroDeIntentos+1;
    for d=1:length(pmatriz(:,1))
        w = w + pmatriz(d,:)'*e(d,:);
        b = b + e(d,:);
        asalida = neu(pmatriz,w,b);
        e = tmatriz - asalida;
    end
end

NumeroDeIntentos

'aprendido'

asalida = neu(pmatriz,w,b)
w
b

w= ones(64,27)
b= ones(1,27)
 
