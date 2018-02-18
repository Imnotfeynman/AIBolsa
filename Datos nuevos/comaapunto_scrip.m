clear all

cd('Datos')
archivos1 = dir('*.csv');
archivos.name = {archivos1.name};
archivos.folder = {archivos1.folder};
clear archivos1
cd ..

mkdir('DatosPunto')
destino=cd;
destino = [destino, '\DatosPunto\'];

for ii = 1:length(archivos.name)
    
    b = uint16(archivos.name{ii});
    comaapunto([archivos.folder{ii},'\',archivos.name{ii}], destino, [char(b(1:(end-4))),'','.csv'])
    
end