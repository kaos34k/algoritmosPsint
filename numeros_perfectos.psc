//si la suma de sus divisores excepto el mismo igual al propio numero
Proceso numeros_perfectos
	definir n como entero;
	definir i como entero;
	definir j como entero;
	definir sum como entero;
	
	Escribir 'ingresaun numero ';
	leer n;
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		sum <- 0;
		
		Para j<-1 Hasta ( i / 2) Con Paso 1 Hacer
			Si (i mod j) = 0 Entonces
				sum <- sum + j;
			FinSi
		FinPara
		
		si sum = i entonces
			escribir i, ' es un número perfecto';
		FinSi
	FinPara
	
	
	
FinProceso