pc = int(input("PC" ))
strike = int(input("STRIKE" ))
prima = int(input("PRIMA" ))
n_lotes = int(input("NUMERO DE LOTES" ))

g = strike*100*(n_lotes) +prima*100*n_lotes -0.9*prima*n_lotes -0.6*strike*n_lotes  -pc*100*(n_lotes) -0.6*pc*n_lotes

print("Ganancia", g)
