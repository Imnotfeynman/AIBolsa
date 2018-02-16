function sellcalls(N,p,pc,s,com_o,com_c,com_v);
%evolucion al variar s y p
t(:,1) = (pc-pc/15):0.1:(s+s/15);
 for j= 1:1000;
     l = j*0.1 + (pc-pc/15);
     [ganancia_cumplo,porcentaje_cumplo, ganancia_nocumplo, porcentaje_nocumplo] = sell_call(N,l,pc,s,com_o,com_c,com_v);
     t(j,2) = ganancia_cumplo;
     t(j,3) = porcentaje_cumplo;
     t(j,4) = ganancia_nocumplo;
     t(j,5) = porcentaje_nocumplo;
 end
 
[ganancia_cumplo,porcentaje_cumplo, ganancia_nocumplo, porcentaje_nocumplo] = sell_call(N,p,pc,s,com_o,com_c,com_v);
display('Caso optimo (accion alcanza strike)')
ganancia_cumplo, porcentaje_cumplo
display('Accion no alcanza strike')
ganancia_nocumplo, porcentaje_nocumplo
 
 figure 
 subplot(2,2,1)
 scatter(t(:,1),t(:,2))
 title('Ganancia cumplo')
 subplot(2,2,2)
 scatter(t(:,1),t(:,3))
 title('Porcentaje cumplo')
 subplot(2,2,3)
 scatter(t(:,1),t(:,4))
 title('Ganancia no cumplo')
 subplot(2,2,4)
 scatter(t(:,1),t(:,5))
 title('Porcentaje no cumplo')
 end
 