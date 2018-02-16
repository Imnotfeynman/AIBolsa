#REDES NEURONALES
#PERSEPTRON MONOCAPA CON APRENDISAJE SUPERVISADO

#definisiones de sumas y multiplicacion entre matrices y vectores

def suma(t,b):
	l=[] #suma lista contra lista y devuelve lista
	for a in range(len(t)):
		y=0
		y=int(t[a])+int(b[a])
		l.append(int(y))
	return(list(l))

def multi2(t,b):
	l=[] #multiplica lista contra lista y devuelve lista
	for a in range(len(t)):
		y=0
		y=int(t[a])*int(b[a])
		l.append(int(y))
	return(list(l))

def multi(t,b):
	l=[] #multiplica entero contra lista y devuelve lista
	for a in range(len(b)):
		y=0
		y=int(t)*int(b[a])
		l.append(int(y))
	return(list(l))

def suma2(t,b):
	l=[] #suma lista contra entero y devuelve lista
	for a in range(len(t)):
		y=0
		y=int(t[a])+int(b)
		l.append(int(y))
	return(list(l))

def sum3(y):
	j=0 #suma los valores de una lista y devuelve entero
	for a in range(len(y)):
		j+=int(y[a])
	return(int(j))

#algoritmo del perceptron simple

def neu(p,w,b):
	t=[] #red neuronal tipo perceptron
	for a in range(len(w)):
		l=0
		l+=sum3(suma2(multi2(p,w[a]),b[a]))
		if l>1:
			t.append(int(1))
		else:
			t.append(int(0))
	return(list(t))


def ap(p,l,w,b):
	l2=0 #aprendisaje supervisado tipo perceptron
	ty=0
	tii=1
	tus=[]
	for a in range(len(w)):
		tus.append(int(0))
	while l2==0:
		ty+=1
		for a in range(len(p)):
			k1=multi(-1,neu(p[a],w,b))
			e=suma(k1,l[a])
			for u in range(len(w)):
				w[u]=suma(w[u],multi(e[u],p[a]))
				b[u]=b[u]+e[u]

		for h in range(len(p)):
			e=0
			k1=multi(-1,neu(p[h],w,b))
			e=suma(k1,l[h])
			if e!=tus:
				break
		else:
			print("aprendido en "+str(ty)+" intentos")
			l2+=1
		k=10000
		if ty>k*tii:
			print("")
			print("no puede ser aprendido, ya sea porque no son linealmente separables las entradas, o porque se superaron los "+str(ty-1)+" intentos de aprendisaje.")
			print("")
			kuku=1
			while kuku==1:
				print("")
				fin=input("Quiere continuar con el aprendisaje de todas formas, si o no? ")
				if fin=="no":
					l2+=1
					print("")
					print("Gracias por usar este programa.")
					print("")
					input("- Precione Enter para terminar - ")
					quit()
				elif fin=="si":
					kuku+=1
					tii+=1
				else:
					print("")
					print("deve ingresar si o no en minuscula y sin dejar espacios")
					print("")
					pass
		else:
			pass


def cerebroW(ent, sal):
	y=[] #crea la matriz de pesos del cerebro
	w=[]
	b=[]
	for a in range(int(ent)):
		y.append(int(0))
	for b in range(int(sal)):
		w.append(list(y))
	return(list(w))

def cerebroB(sal):
	b=[] #crea el vector de suma de cada neurona
	for a in range(int(sal)):
		b.append(int(0))
	return(list(b))

#motor de lanzamiento del programa

print("bienvenido")
print("...")
print("Este es un perceptron simple con aprendisaje supervisado.")
print("")
print("Las entradas deben ser ingresadas en binario y se deve respetar el tamaño de las entradas y salidas.")
print("")
print("")

tij=1
while tij==1:
	u1=input("su entrada de que tamaño es? ") #nos pide ingresar la cantidad de neuronas en la capa de entrada
	if u1=="0":
		print("")
		print("deve ingresar un numero entero mayor a 0")
		print("")
	else:	
		try:
			u1=int(u1)
			tij=0
		except:
			print("")
			print("deve ingresar un numero entero mayor a 0")
			print("")

print("")

tuj=1
while tuj==1:
	u2=input("su salida de que tamaño es? ") #nos pide ingresar la cantidad de neuronas en la capa de salida
	if u2=="0":
		print("")
		print("deve ingresar un numero entero mayor a 0")
		print("")
	else:	
		try:
			u2=int(u2)
			tuj=0
		except:
			print("")
			print("deve ingresar un numero entero mayor a 0")
			print("")

print("")

w=cerebroW(u1,u2) #crea el cerebro con los tamaños dichos de entrada y salida
b=cerebroB(u2)
print("")

inns=[]
outs=[]

def pregunta():
	p1=1	#crea los pares entrada salida para enseñar al perceptron
	while p1==1:
		tau=0
		nn=[]
		tt=[]
		for a in range(1,int(u1)+1):
			ji=0
			while ji==0:
				kk=0
				kk=input("ingrese el "+str(a)+"º valor de su entrada: ")
				if kk=="1" or kk=="0":
					ji+=1
					nn.append(int(kk))
				else:
					print("")
					print("recuerde que las entradas deven ser 0 o 1.")
					print("")
					pass
		
		tal=0
		gus=0
		if len(inns)>0:
			for g in range(len(inns)):
				if inns[g]==nn:
					gus=int(g)
					tal+=1
					break
				else:
					pass 
		else:
			inns.append(list(nn))
			tal+=3
		
		if tal==1:			
			print("")
			print("Esa entrada ya a sido ingresada.")
			print("")
			while True:
				f=input("desea cambiar su entrada por esta, si o no? ")
				print("")
				if f=="si":
					del inns[int(gus)]	
					del outs[int(gus)]
					inns.append(list(nn))
					break
				elif f=="no":
					tau+=1
					break
				else:
					print("")
					print("deve ingresar si o no en minuscula y sin dejar espacios")
					print("")
		elif tal==0:
			inns.append(list(nn))
		else:
			pass
		print("")
		if tau==0:
			for b in range(1,int(u2)+1):
				jo=0
				while jo==0:
					ss=0
					ss=input("ingrese el "+str(b)+"º valor de su salida: ")
					if ss=="1" or ss=="0":
						tt.append(int(ss))
						jo+=1
					else:
						print("")
						print("recuerde que las entradas deven ser 0 o 1.")
						print("")
						pass
			outs.append(list(tt))
			print("")
		else:
			pass
		while True:
			hih=input("quiere ingresar otro par entrada/salida, si o no? ")
			if hih=="no":
				p1-=1
				print("")
				break
			elif hih=="si":
				print("")
				break
			else:
				print("")
				print("deve ingresar si o no en minuscula y sin dejar espacios")
				print("")

pregunta()

inns=list(inns)
outs=list(outs)

w=list(w)
b=list(b)

print("")
ap(inns,outs,w,b)
print("")

def pprep():
	na=1 #crea las entradas ingresadas para probar dichas salidas en el perceptron
	while na==1:
		yy=[]
		for a in range(1,u1+1):
			ju=0
			while ju==0:
				aa=0
				aa=input("ingrese el "+str(a)+"º valor de su entrada: ")
				if aa=="1" or aa=="0":
					yy.append(int(aa))
					ju+=1
				else:
					print("")
					print("recuerde que las entradas deven ser 0 o 1.")
					print("")
					pass	
		print("")
		print("su respuesta es", neu(yy,w,b))
		print("")
		tito=0
		while tito==0:
			hu=input("desea ingresar otro valor al cerebro, si o no? ")
			if hu=="no":
				tito+=1
				na-=1
			elif hu=="si":
				tito+=1
				print("")
				pass
			else:
				print("")
				print("deve ingresar si o no en minuscula y sin dejar espacios")
				print("")

pprep()


print("")
print("")
print("Gracias por usar este programa.")
print("")

input("- Precione Enter para terminar - ")