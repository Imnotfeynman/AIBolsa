function [ganancia_cumplo,porcentaje_cumplo, ganancia_nocumplo, porcentaje_nocumplo] = sell_call(N,Na,p,pc,s,com_o,com_c,com_v)
%%
% p = prima
% s = strike 
% com = comision
% N = numero lotes (se asume que cada lote lleva 100 acciones)
% Na = acciones por lote
% pc = precio de compra
%%
ganancia_cumplo = N*Na*(p + s - pc) - N*(Na/100)*(com_o*p + com_c*pc + com_v*s );
porcentaje_cumplo = (ganancia_cumplo)/(N*(Na/100)*pc + N*(Na/100)*(com_o*p + com_c*pc + com_v*s));
ganancia_nocumplo = N*Na*p - N*(Na/100)*(com_o*p);
porcentaje_nocumplo = ganancia_nocumplo/(N*(Na/100)*pc + N*(Na/100)*(com_o*p + com_c*pc));
end


