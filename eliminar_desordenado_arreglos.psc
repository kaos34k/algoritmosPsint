Proceso eliminar_desordenados
	Dimension  a[100];
	
	definir n como entero;
	definir x como entero;
	definir i como entero;
	definir aux Como Logico;;
	definir k como entero;
	definir a como entero;
	definir h como entero;
	
	escribir 'ingresa un numero';
	leer x;
	
	i<-1;
	
	aux <- falso;
	si x >=1 entonces
		Mientras i <= n  y aux = falso Hacer
			
			Si a[i] = x Entonces
				aux<- Verdadero;
				n<- n-1;
				Para k<-i Hasta n Con Paso 1 Hacer
					a[k]<- a[k+1];
					//k<- k+1;
				FinPara
			SiNo
				i <- i+1;
			FinSi
		FinMientras
		
		si aux = falso entonces
			escribir 'el elmento ', x, ' no esta en el arreglo';
		SiNo
			escribir 'el arreglo esta vacio';
		FinSi
	FinSi
FinProceso
