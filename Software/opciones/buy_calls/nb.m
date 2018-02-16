clear all
import_values
%% Nombres y Valores %%
tsh = regexp(name,'[0-9][.0-9][.0-9][.0-9]','match') ; %identifica en name los elementos que tienen # - . o # - . o # - . o #  
data = pi*ones(numero_opciones,9) ;
original_names = name;
for ii= 1 : numero_opciones ;
    
    data(ii,1) = str2double(tsh{ii,1});     % strike
    data(ii,2) = values(ii,3) ;             %prima
    data(ii,3) = values(ii,4) ;             %pactual
    data(ii,4) = values(ii,5) ;             %variacion
    data(ii,5) = values(ii,6) ;             %precioapertura
    data(ii,6) = values(ii,7) ;             %cant compra
    data(ii,7) = values(ii,8) ;             %preciocomp
    data(ii,8) = values(ii,9) ;             %precio venta
    data(ii,9) = values(ii,10) ;            %cantidad venta
    
end

for kk = 2:length(data) ;
    if (data(kk,3) == pi) && (isequal(regexp(name(kk,1),'[A-Z][A-Z][A-Z]','match'),regexp(name(kk-1,1),'[A-Z][A-Z][A-Z]','match'))==1 )
    data(kk,3) = data(kk-1,3);
    
%    elseif (data(kk,3) == pi) && (isequal(regexp(name(kk,1),'[A-Z][A-Z][A-Z]','match'),regexp(name(kk+1,1),'[A-Z][A-Z][A-Z]','match'))==1 )
%    data(kk,3) = data(kk+1,3);
end
end % me pone el mismo precio actual, a veces solo aparece el precio actual en un solo elemento de la especie

tsh2 = regexp(name(:,1),'[A-Z][A-Z][A-Z][V]','match'); %encuentra donde la cuarta letra (C o V), sea V y la excluye.
indx = find(~cellfun(@isempty,tsh2)); %asi no me muestra los puts, donde la cuenta es distinta.
name(indx,:) = {'put'};

j = length(data) - sum(data(:,3) == pi) ; %largo de data menos donde no tengo valores (la maquina pone pi ahi)
for p = 1:j
    if data(p,3) == pi
        name{p,1} = []; %mato el nombre donde no tengo el precio actual, habra que hacer la cuenta a mano ahi.
    end
end

clearvars a j p ii numero_opciones x c ll tsh strike indx tsh2
