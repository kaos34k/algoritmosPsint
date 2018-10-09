Proceso matriz_traspuesta
	definir m como entero;
	definir n como entero;
	
	//control de ciclos
	definir i como entero;
	definir j como entero;
	
	definir a como entero;
	definir ta como entero;
	
	escribir "Ingresa el numero de filas y columnas";
	leer m, n;
	
	
	//defino los arreglos
	Dimension a[m, n];
	Dimension ta[n, m];
	
	

	si ( (m >1 y m <= 50) y (n >1 y n <= 50))  entonces
		
		Para i<- 1 Hasta m Con Paso 1 Hacer
			
			Para j<-1 Hasta n Con Paso 1 Hacer
				 a[i, j] <- azar(100)+1;
			FinPara
			
		FinPara
		
		Para i<-1 Hasta m Con Paso 1 Hacer
			Para j<-1 Hasta n Con Paso 1 Hacer
				ta[j,i] <- a[i, j];
			FinPara
		FinPara
		
		
		Para i<-1 Hasta m Con Paso 1 Hacer
			Para j<-1 Hasta n Con Paso 1 Hacer
				escribir ta[i,j];
			FinPara
		FinPara
	finsi
FinProceso
