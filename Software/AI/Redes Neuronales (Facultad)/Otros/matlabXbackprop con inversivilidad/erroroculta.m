function erroroculta= erroroculta(inputs,targets,w1, w2)
    erroroculta=w2'*errorsalida(inputs,targets,w1, w2);
end