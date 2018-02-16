function [g] = ganancia_call(pv,strike,n_lotes,prima)

g = pv*100*n_lotes - strike*100*n_lotes - 0.9*prima*n_lotes - 0.6*pv*n_lotes - 0.6*strike*n_lotes


end