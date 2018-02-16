pv = int(input("PV" ))
strike = int(input("STRIKE" ))
prima = int(input("PRIMA" ))
n_lotes = int(input("NUMERO DE LOTES" ))

g = pv*100*(n_lotes) -strike*100*n_lotes -0.9*prima*n_lotes -0.6*pv*n_lotes -0.6*strike*n_lotes -prima*100*n_lotes

print("Ganancia", g)
