//sumar e imprimir una serie
Proceso suma_serie
	definir suma como entero;
	definir aux  como caracter;
	definir i como entero;
	
	suma <- 0;
	aux  <- 't';
	i <- 2;
	
	Mientras i <= 18 Hacer
		suma <- suma + i;	
		escribir suma;
		si aux = 't' entonces
			aux <- 'f';
			i <- i + 3;
		sino
			i <- i + 2;
			aux <- 't';
		FinSi
	FinMientras
FinProceso
