function erroroculta= errorocultaINV(inputs,targets,w1, w2)
    erroroculta=w1*errorsalidaINV(inputs,targets,w1, w2);
end