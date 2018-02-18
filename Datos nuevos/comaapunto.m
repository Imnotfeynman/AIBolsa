function []=comaapunto(archivo, destino, nombre)
Data = fileread(archivo);
Data = strrep(Data, ',', '.');
FID = fopen([destino, nombre], 'w');
fwrite(FID, Data, 'char');
fclose(FID);

%strrep(Fecha, '.', '') reemplazar punto por nada
end