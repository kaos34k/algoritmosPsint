Proceso serie_tres
	definir i como entero;
	definir n Como Entero;
	Definir serie como real;
	Definir aux como caracter;
	
	aux <-'t';
	serie <- 0;
	escribir 'Ingresa un numero entero';
	Leer n;
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		si aux = 't' entonces 
			aux <- 'f';
			serie <- serie + 1 / i;
		SiNo
			aux <- 't';
			serie <- serie - 1 / i;
		FinSi
			
		i <- i + 1;
	FinPara
	
	Escribir serie;
	
FinProceso
