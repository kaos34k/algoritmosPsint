Proceso numeros_primos
	definir i como entero;
	definir tp como entero;
	definir m como entero;
	definir j como entero;
	definir aux como caracter;
	
	i <- 3;
	tp<-0;
	
	Escribir "Injgresa un numero";
	leer m;
	
	Si m >= 1 Entonces
		tp <- tp + 1;
		escribir 'número primo', 1;
		si m > 2 entonces 
			tp<-tp + 1;
			escribir 'número primo', 2;
		FinSi
		
	FinSi
	
	Mientras i <= m Hacer
		aux<- 'v';
		j <- 3;
		Mientras j < ( i / 2) y (aux='v') Hacer
			Si (i mod j) = 0 Entonces
				aux <- 'f';
			FinSi
			j <- j + 2;
		FinMientras
		
		Si aux='v' Entonces
			escribir 'número primo', i;
			tp<- tp + 1;
		FinSi
		i<- i + 2;
	FinMientras
	
	escribir 'Entre 1 y M hay ', tp ,' números primos';
	
	
	
FinProceso
