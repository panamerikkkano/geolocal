Algoritmo quicksort
	Definir numeroMayor Como Entero
	Definir vector Como Entero
	Dimension vector[5]
	vector[1] <- 5
	vector[2] <- 3
	vector[3] <- 1
	vector[4] <- 4
	vector[5] <- 1
	// declarando el numero mayor explicitamente como 5
	numeroMayor <- 5
	Dimension operaciones[numeroMayor]
	Para i<-1 Hasta 5 Hacer
		operaciones[i] <- 0
	FinPara
	Para i<-1 Hasta 5 Hacer
		operaciones[vector[i]] <- operaciones[vector[i]]+1
	FinPara
	Escribir "tabla sumas "
	Para i<-1 Hasta 5 Hacer
		Escribir operaciones[i]
	FinPara
	Para i<-2 Hasta 5 Hacer
		operaciones[i] <- operaciones[i]+operaciones[i-1]
	FinPara
	Escribir 'emostrando el resultado de la operacion'
	Para i<-1 Hasta 5 Hacer
		Escribir operaciones[i]
	FinPara
	Definir salida Como Entero
	Dimension salida[numeroMayor]
	Para i<-1 Hasta 5 Hacer
		salida[operaciones[vector[i]]] <- vector[i]
		operaciones[vector[i]] <- operaciones[vector[i]]-1
	FinPara
	Escribir 'mostrando la salida '
	Para i<-1 Hasta 5 Hacer
		Escribir salida[i]
	FinPara
FinAlgoritmo
