
funcion disponibilidad<-consultardisponibilidad(50)
	inventario = 50
	escribir "la disponibilidad que ay es de" inventario " libros"
	Escribir "ahora que quieres hacer"
FinFuncion

funcion librosaprestar<-prestarlibros(presta)
	inventario = 50
	si presta < inventario Entonces
		Escribir "aqui tiene sus libros"
		inventario = presta - inventario
	sino 
		escribir "no es posible prestarle esa cantidad de libros"
		inventario = presta - inventario
	FinSi
	Escribir "ahora que quieres hacer"
FinFuncion
funcion devolver<- devolverlibros(lprestados,ldevolver) 
	si lprestados < ldevolver Entonces
		
		escribir "no es posible devolver esa cantidad de libros"
	sino 
		si lprestados > ldevolver
			Escribir "recibidos tus libros a devolver"
		FinSi
	FinSi
	Escribir "ahora que quieres hacer"
FinFuncion

Algoritmo sin_titulo
	definir inventario, presta, lprestados, ldevolver Como Entero
	Repetir
		Escribir "1. CONSULTAR DISPONIBILIDAD"
		Escribir "2. PRESTAR LIBROS"
		Escribir "3. DEVOLVEL LIBROS"
		Escribir "4. SALIR"	
		leer op
		segun op hacer
			1: disponibilidad<-consultardisponibilidad(50)
			2: Escribir "que cantidad de libros quiere prestar"
				leer presta
				librosaprestar<-prestarlibros(presta)
			3: escribir "que cantidad de libros se les presto"
				Leer lprestados
				Escribir "que cantidad de libros va a devolver"
				Leer ldevolver 
				
		FinSegun
	Hasta Que op > 4
FinAlgoritmo
