Proceso fibonacci
	Definir i como entero;
	definir primero como entero;
	definir segundox como entero;
	definir siguiente como entero;
	
	primero <- 0;
	segundox <- 1;
	i<-3;
	
	Mientras i<=10 Hacer
		escribir (primero + segundox);
		siguiente <- (primero + segundox);
		primero <- segundox;
		segundox <- siguiente;
		
		i<- i + 1;
	FinMientras
FinProceso
