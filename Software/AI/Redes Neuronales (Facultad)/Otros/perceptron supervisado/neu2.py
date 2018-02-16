Python 3.4.2 (v3.4.2:ab2c023a9432, Oct  6 2014, 22:15:05) [MSC v.1600 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> def suma(t,b):
	l=[] #suma lista contra lista y devuelve lista
	for a in range(len(t)):
		y=0
		y=int(t[a])+int(b[a])
		l.append(int(y))
	return(list(l))

>>> def multi2(t,b):
	l=[] #multiplica lista contra lista y devuelve lista
	for a in range(len(t)):
		y=0
		y=int(t[a])*int(b[a])
		l.append(int(y))
	return(list(l))

>>> def multi(t,b):
	l=[] #multiplica entero contra lista y devuelve lista
	for a in range(len(b)):
		y=0
		y=int(t)*int(b[a])
		l.append(int(y))
	return(list(l))

>>> def suma2(t,b):
	l=[] #suma lista contra entero y devuelve lista
	for a in range(len(t)):
		y=0
		y=int(t[a])+int(b)
		l.append(int(y))
	return(list(l))

>>> def sum3(y):
	j=0 #suma los valores de una lista y devuelve entero
	for a in range(len(y)):
		j+=int(y[a])
	return(int(j))

>>> def neu(p,w,b):
	t=[] #red neuronal tipo perceptron
	for a in range(len(w)):
		l=0
		l+=sum3(suma2(multi2(p,w[a]),b[a]))
		if l>1:
			t.append(int(1))
		else:
			t.append(int(0))
	return(list(t))

>>> def ap(p,l,w,b):
	l2=0 #aprendisaje supervisado tipo perceptron
	ty=0
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

>>> def cerebroW(ent, sal):
	y=[] #crea la matriz de pesos del cerebro
	w=[]
	b=[]
	for a in range(int(ent)):
		y.append(int(0))
	for b in range(int(sal)):
		w.append(list(y))
	return(list(w))

>>> def cerebroB(sal):
	b=[] #crea el vector de suma de cada neurona
	for a in range(int(sal)):
		b.append(int(0))
	return(list(b))


