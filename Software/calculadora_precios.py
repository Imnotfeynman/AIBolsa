#inversion_i = int(input("Monto a invertir" ))

precio_compra = int(input("Precio de Compra" ))

sl = -0.032*precio_compra +precio_compra

uno_intra = 0.016*precio_compra +precio_compra
uno_no_intra = 0.022*precio_compra +precio_compra

dos_intra = 0.026*precio_compra +precio_compra
dos_no_intra = 0.032*precio_compra +precio_compra

tres_intra = 0.036*precio_compra +precio_compra
tres_no_intra = 0.042*precio_compra +precio_compra

cuatro_intra = 0.046*precio_compra +precio_compra
cuatro_no_intra = 0.052*precio_compra +precio_compra

cinco_intra = 0.056*precio_compra +precio_compra
cinco_no_intra = 0.062*precio_compra +precio_compra

print('STOP LOSS', sl)
print('PV INTRA 1%', uno_intra,',PV NO-INTRA 1%', uno_no_intra)
print("PV INTRA 2%", dos_intra ,",PV NO-INTRA 2%", dos_no_intra)
print("PV INTRA 3%", tres_intra ,",PV NO-INTRA 3%", tres_no_intra)            
print("PV INTRA 4%", cuatro_intra , ",PV N-INTRA 4%", cuatro_no_intra)
print("PV INTRA 5%", cinco_intra ,",PV NO-INTRA 5%", cinco_no_intra)      
