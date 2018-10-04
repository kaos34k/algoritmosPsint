Proceso arreglo_de_primos
	Dimension primos[30];
	
	definir numerox como entero;
	definir div como entero;
	definir aux como logico;
	definir k Como Entero;
	definir primos como entero;
	
	numerox <-3;
	
	
	primos[1] <- 2;
	Para k<-2 Hasta 30 Con Paso 1 Hacer
		div <- 3;
		aux <- verdadero;
		
		Mientras div <( numerox / 2) y aux = verdadero Hacer
			
			Si ( numerox mod div) =0 Entonces
				aux<-falso;
			SiNo
				div<-div + 2;
			FinSi
		FinMientras
		si aux = verdadero  entonces
			primos[k] <- numerox;
		FinSi
		numerox<-numerox+2;
	FinPara
	
	Para k<-1 Hasta 30 Con Paso 1 Hacer
		escribir primos[k];
	FinPara
	
FinProceso
