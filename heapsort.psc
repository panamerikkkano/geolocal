Algoritmo sin_titulo
	Definir temp,vector Como Entero
	Dimension vector[5]
	vector[1] <- 5
	vector[2] <- 3
	vector[3] <- 1
	vector[4] <- 4
	vector[5] <- 2
	Para x<-2 Hasta 5 Hacer
		Para a<-1 Hasta 4 Hacer
			Si vector[a]>vector[a+1] Entonces
				temp <- vector[a]
				vector[a] <- vector[a+1]
				vector[a+1]<-temp
			FinSi
		FinPara
	FinPara
	Para z<-1 Hasta 5 Hacer
		Escribir vector[z]
	FinPara
FinAlgoritmo
