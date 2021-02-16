Algoritmo bucket
	dimension vector[12]
	vector[1] = 22
	vector[2] = 45
	vector[3] = 12
	vector[4] = 8
	vector[5] = 10
	vector[6] = 6
	vector[7] = 72
	vector[8] = 81
	vector[9] = 33
	vector[10] = 18
	vector[11] = 50
	vector[12] = 14
	n = 12
	max = 81
	min = 6
	divisor = redon((max + 1) / 10) + 1
	Dimension buckets[10,n]
	para i<-1 hasta n con paso 1
		j = redon(vector[i] / divisor)
		Escribir "jota = ",j
		para b<-1 hasta n con paso 1
			si buckets[j,b] = 0 Entonces
				Escribir "index , ",j
				buckets[j,b] =  vector[i]
				b = 312
			FinSi
		FinPara
		Escribir "mostrando los buckets "
		para k = 1 hasta 10 con paso 1
			para l = 1 hasta n con paso 1
				si buckets[k,l] <> 0 Entonces
					Escribir "bucket , ",k,',',l,"|   ", buckets[k,l]
				FinSi
				
			FinPara
		FinPara
	FinPara
	
	//reordenando cada bucket usando el algoritmo de ordenamiento insert sort.
	para i<-1 hasta 10 con paso 1
		para j<-1 hasta n con paso 1
			para k<-j hasta n con paso 1
				si buckets[i,k] < buckets[i,j] Entonces
					temp = buckets[i,j]
					buckets[i,j] = buckets[i,k]
					buckets[i,k] = temp
				FinSi
			FinPara
		FinPara
	FinPara
	Escribir "mostrando los buckets ordenados"
	para k = 1 hasta 10 con paso 1
		para l = 1 hasta n con paso 1
			si buckets[k,l] <> 0 Entonces
				Escribir "bucket , ",k,',',l,"|   ", buckets[k,l]
			FinSi
			
		FinPara
	FinPara
FinAlgoritmo
