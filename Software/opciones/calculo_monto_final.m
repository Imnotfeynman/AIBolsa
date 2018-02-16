
i = 20000 ;                   %monto a invertir
c = [0.6, 1.2] ;               %comision. Intra-no intra.
prima = 0.3 ;
N =  18    ;                        %numero opciones vendidas (lotes)
var = (0:0.5:10);             %vector cambio porcentual en accion

f_intra   =  (var - c(1))*i/100 ;     %monto final
f_nointra =  (var - c(2) + prima*N)*i/100 ;     %monto final

%%
% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on',...
    'YTickLabel',{'24500','25000','25500','26000','26500','27000','27500'},...
    'XTick',[0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10],...
    'FontWeight','bold',...
    'FontSize',12);
box(axes1,'on');
hold(axes1,'on');

% Create plot
plot(var,f_intra,'Marker','o','LineStyle','none');
hold on
plot(var,f_nointra,'Marker','s','LineStyle','none');

% Create xlabel
xlabel('Cambio porcentual');

% Create ylabel
ylabel('Diff $');

% Create title
title(['Monto inicial $' num2str(i)]);

curtick = get(gca, 'YTick');
set(gca, 'YTickLabel', cellstr(num2str(curtick(:)))); %sin not cientif
 