Proceso cuadro_magico
	definir n como entero;
	definir j como entero;
	definir i como entero;
	definir cm como entero;
	definir num como entero;
	
	Escribir "Ingrese la dimension del cuadro";
	leer n;
	dimension cm[n, n];
	
	Si (n>=2) y (n <= 50) y ( (n mod 2) <> 0) Entonces
		j <- (n+1) / 2;
		i <-1;
		cm[j, i] <- 1;
			
		Para num<- 2 Hasta (n * n) Con Paso 2 Hacer
			Si ((num-1) mod n) = 0 Entonces
				i <- i+1;
			SiNo
				i <- i-1;
				j<- j + 1;
			FinSi
			
			Si i=0 Entonces
				i <- n;
			FinSi
			
			Si j>n Entonces
				j<- 1;
			FinSi
			
			cm[i, j] <- num;
			num <- num +1;
		FinPara
		
		escribir "cuadro magico";
		
		Para i<-1 Hasta n Con Paso 1 Hacer
			Para j<-1 Hasta n Con Paso 1 Hacer
				escribir cm[i, j];
			FinPara
		FinPara
	FinSi
	
FinProceso
