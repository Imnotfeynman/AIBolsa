nb ; Na=100 ; format bank ; % en nb.mat importo y hago algunas operaciones de forma
diff= zeros(length(name),2);

ll = 5;

for kk = 1: length(data);
    tsh3 = data(:,9);
 if Na*data(kk,9)*(data(kk,8) + data(kk,1) + 1/100*(0.9*data(kk,8) + 0.6*(data(kk,1)+data(kk,3)))) > (ll*3000+1500); %si la inversion excede mis fondos, haceme la cuenta para mis fondos.
     tsh3(kk,1) = (ll*3000+1500)/(Na*(data(kk,8) + data(kk,1) + 1/100*(0.9*data(kk,8) + 0.6*(data(kk,1)+data(kk,3))))); % compro la mayor cantidad de lotes posibles
     tsh3(kk,1) = floor(tsh3(kk,1));
 end
 
    diff(kk,1) = Na*tsh3(kk,1)*(data(kk,3) - data(kk,8) - data(kk,1) - 1/100*(0.9*data(kk,8) + 0.6*(data(kk,1)+data(kk,3)))); %cuanto gano si vendiera hoy al strike
    diff(kk,2) = Na*tsh3(kk,1)*(data(kk,8) + 1/100*(0.9*data(kk,8)));
    if data(kk,8) == pi
      diff(kk,1) = Na*tsh3(kk,1)*(data(kk,3) - data(kk,2) - data(kk,1) - 1/100*(0.9*data(kk,2) + 0.6*(data(kk,1)+data(kk,3))));    %pi es lo que el codigo pone cuando no hay numero, si se ve eso hace la cuenta con la prima. 
    elseif data(kk,2)==pi
        diff(kk,1) = Na*tsh3(kk,1)*(data(kk,3) - data(kk,7) - data(kk,1) - 1/100*(0.9*data(kk,2) + 0.6*(data(kk,1)+data(kk,3))));
    end
end

[Diff,Index] = sort(diff(:,1)); %ordena las ganancias en orden decreciente

for ii = 1:length(name); % me muestra los resultados
    if  isequal(name(Index(ii,1),1), 'put') == 0
          disp('-----------------')
          disp(name(Index(ii,1),1))
          disp(Diff(ii,1))
          disp (diff(Index(ii,1),2))
          disp('-----------------')
    end
end

% %% %%%%%%%%%%%%%%% Calculos particulares sobre una especie %%%%%%%%%%%%%%%%

tsh = regexp(original_names(:,1),'[P][B][R][C][8][2][.][4][D][I]','match'); 
indx = find(~cellfun(@isempty,tsh)); %encuentra los tipos que se llaman como me interesa
g = zeros(30,1);

for ll = 1:length(g) ; %que pasa con la ganancia si la accion aumenta un ll porciento
    g(ll,1) = Na*data(indx,9)*((data(indx,3)*(1 + ll/100)) - data(indx,8) - data(indx,1) - 1/100*(0.9*data(indx,8) + 0.6*(data(indx,1)+data(indx,3)))); 
 
    if data(indx,8) == pi
      g(ll,1) = Na*data(indx,9)*((data(indx,3)*(1 + ll/100)) - data(indx,2) - data(indx,1) - 1/100*(0.9*data(indx,2) + 0.6*(data(indx,1)+data(indx,3))));     
    end
    
end
ll = (1:1:length(g))';
plot(ll,g(:,1),'d')
    hold on
%%
%clearvars  ii  kk  pdif data diff values
%clearvars Diff Index Na name ll g indx tsh original_names tsh3