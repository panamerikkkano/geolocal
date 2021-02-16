Algoritmo radix	
	Definir  entrada Como Entero
	Dimension entrada[5,3]
	
	entrada[1,1] <- 0
	entrada[1,2] <- 3
	entrada[1,3] <- 2
	
	entrada[2,1] <- 0
	entrada[2,2] <- 4
	entrada[2,3] <- 3
	
	entrada[3,1] <- 0
	entrada[3,2] <- 1
	entrada[3,3] <- 1
	
	entrada[4,1] <- 0
	entrada[4,2] <- 0
	entrada[4,3] <- 5
	
	entrada[5,1] <- 6
	entrada[5,2] <- 3
	entrada[5,3] <- 2
	Definir index_entrada Como Entero
	Definir casillas Como Entero
	definir entrada_temp Como Entero
	
	Definir  contador Como Entero
	definir digitos,n,temp como entero
	Dimension temp[3]
	digitos<-3 // explicitamente
	n<-5
	Dimension  entrada_temp[n,3]
	Definir  subindex Como Entero
	Dimension casillas[10,n]
	Para d<-3 Hasta 1 Con Paso -1
		Escribir "d: ",d
		para i<-1 hasta n con paso 1
			// insertando el entrada[i] a la casilla[i]
			para ci <- 1 hasta n con paso 1
				si casillas[entrada[i,d]+1,ci] = 0 Entonces
					casillas[entrada[i,d]+1,ci] = i
					// reemplazando al break
					ci<-123
				FinSi
			FinPara
		FinPara
		Escribir "nuevas casillas "
		para i<-1 hasta 10	 Con Paso 1
			Escribir "index ",(i)
			para j<-1 hasta n Con Paso 1
				Escribir casillas[i,j]
			FinPara
		FinPara
		
		index_entrada = 1
		para i<-1 hasta 10 con paso 1
			para j<-1 hasta n con paso 1
				si casillas[i,j] <> 0 Entonces
					Escribir "index = ",index_entrada
					para k<-1 hasta 3 con paso 1 
						
						entrada_temp[index_entrada,k] = entrada[casillas[i,j],k]
					FinPara
					index_entrada=index_entrada+1
				FinSi
			FinPara
		FinPara
		// copiando el array al original
		para i<-1 hasta 5 Con Paso 1
			para j<-1 hasta 3 Con Paso 1
				entrada[i,j] = entrada_temp[i,j]
			FinPara
		FinPara
		//mostrando la entrada actualizada
		Escribir "entrada f5 "
		para i<-1 hasta 5 Con Paso 1
			Escribir "index ",(i)
			para j<-1 hasta 3 Con Paso 1
				Escribir entrada[i,j]
			FinPara
		FinPara
		// vaciando las casillas con 0's
		para i<-1 hasta 10 Con Paso 1
			para j<-1 hasta 5 Con Paso 1
				casillas[i,j] = 0
			FinPara
		FinPara
	FinPara
	
	
FinAlgoritmo
