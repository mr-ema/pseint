Funcion EFECTO_TYPING(Cadena, Delay)
	
	// Aveces Las Cadenas Empiezan En 0. Si Es El Caso Remplaza el 1 con el 0
	Para i Desde 1 Hasta Longitud(Cadena) Hacer
		Esperar Delay Milisegundos
		Escribir Sin Saltar Subcadena(Cadena, i, i);
	FinPara
	
	Escribir ""
	
FinFuncion

Algoritmo Test
	case1 = "Hola Que Tal"
	case2 = "Espero Estes Teniendo Un Buen Dia"
	
	EFECTO_TYPING(case1, 200);
	EFECTO_TYPING(case2, 100);
	
FinAlgoritmo

