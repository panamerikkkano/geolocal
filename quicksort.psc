Funcion quicksort (L,principio,final)
	i <- principio
	j <- final
	pivote <- (L[i]+L[j])/2
	Mientras i<j Hacer
		Mientras L[i]<pivote Hacer
			i <- i+1
		FinMientras
		Mientras L[j]>pivote Hacer
			j <- j-1
		FinMientras
		Si i<=j Entonces
			temporal <- L[i]
			L[i] <- L[j]
			L[j] <- temporal
			i <- i+1
			j <- j-1
		FinSi
	FinMientras
	Si principio<j Entonces
		quicksort(L,principio,j)
	FinSi
	Si final>i Entonces
		quicksort(L,i,final)
	FinSi
FinFuncion

Algoritmo ordenar
	Dimension numeros[10]
	// Genero un arreglo de 10 nmeros aleatorios
	Para i<-1 Hasta 10 Hacer
		numeros[i] <- azar(100)+1
	FinPara
	Escribir 'Desordenados...'
	Para i<-1 Hasta 10 Hacer
		Escribir numeros[i]
	FinPara
	quicksort(numeros,1,10)
	// Como se pasa por REFERENCIA, numeros se modificara dentro de la funcion
	Escribir 'Ordenados...'
	Para i<-1 Hasta 10 Hacer
		Escribir numeros[i]
	FinPara
FinAlgoritmo
