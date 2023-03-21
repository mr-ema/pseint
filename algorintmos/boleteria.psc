Algoritmo Boleteria
	
	Definir Entrada_Seleccionada, Es_Estudiante, Tarifa_Estudiante, Tarifa_Normal Como Entero;
	
	N <- 3;
	
	Dimension Tipo_Entrada[N];
	Tipo_Entrada[1] <- "Platea";
	Tipo_Entrada[2] <- "Tribuna";
	Tipo_Entrada[3] <- "Galeria";
	
	Dimension Tarifa_Estudiante[N];
	Tarifa_Estudiante[1] = 9000;
	Tarifa_Estudiante[2] = 5000;
	Tarifa_Estudiante[3] = 3500;
	
	Dimension Tarifa_Normal[N];
	Tarifa_Normal[1] = 15000;
	Tarifa_Normal[2] = 9000;
	Tarifa_Normal[3] = 5200;
	
	// --------------------------------------------------------------------------------------------------

	EFECTO_TYPING("Bienvenido Al Sistema De Boleteria Del Teatro Piro", 1200);
	Escribir "";
	EFECTO_TYPING("1. Introduzca El Numero Del Tipo De Entrada Que Desea Comprar", 1200);
	Escribir "";
	
	Para i Desde 1 Hasta N Hacer
		Escribir "(",i,")"," ",Tipo_Entrada[i];
	FinPara
	
	Escribir "";
	Leer Entrada_Seleccionada;
	Escribir "";
	
	Si Entrada_Seleccionada <= N Entonces
		EFECTO_TYPING("2. Es Usted Estudiante", 1200);
		Escribir ""
		
		Escribir  "(1) Si";
		Escribir  "(2) No";
		Escribir "";
		Leer Es_Estudiante;
		
		Si Es_Estudiante == 1 Entonces
			Escribir "";
			EFECTO_TYPING(CONCATENAR("El Total A Pagar Para Estudiantes Es De $", CONVERTIRATEXTO(Tarifa_Estudiante[Entrada_Seleccionada])), 1200);
			
		SiNo
			Escribir "";
			EFECTO_TYPING(CONCATENAR("El Total A Pagar Es De $", CONVERTIRATEXTO(Tarifa_Normal[Entrada_Seleccionada])), 1200);
		FinSi
		
		Escribir "";
		Escribir  "(1) Confirmar Compra";
		Escribir  "(2) Cancelar Compra";
		Escribir "";
		Leer Confirmar;
		
		Borrar Pantalla
		Si Confirmar == 1 Entonces
			EFECTO_TYPING("-- Gracias Por Su Compra, Disfrute La Función --", 1200);
			
		SiNo
			EFECTO_TYPING("-- Compra Cancelada --", 1200);
		FinSi
		
	SiNo
		EFECTO_TYPING("-- Opcion Invalida (EXIT) --", 1200);
	FinSi
	
FinAlgoritmo

Funcion EFECTO_TYPING(Cadena, Delay)
	
	Delay = Delay / Longitud(Cadena);
	
	Para i Desde 1 Hasta Longitud(Cadena) Hacer
		Esperar Delay Milisegundos
		Escribir Sin Saltar Subcadena(Cadena, i, i);
	FinPara
	
	Escribir "";
	
FinFuncion
