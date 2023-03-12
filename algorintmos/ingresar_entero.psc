Funcion R <- EsNumero(Cadena)
	Definir Contador Como Entero
	Dimension Numeros[10]
	
	Para i <- 1 Hasta 10 Hacer
		Numeros[i] = ConvertirATexto(i - 1)
	FinPara
	
	Para i <- 1 Hasta Longitud(Cadena) Hacer
		Si Subcadena(Cadena, i, i) == "-" || Subcadena(Cadena, i, i) == "+" Entonces
			Contador = Contador + 1
			i = 2
		FinSi
		
		Para j <- 1 Hasta 10 Hacer
			Si SubCadena(Cadena, i, i) == Numeros[j]
				Contador = Contador + 1
			FinSi
		FinPara
	FinPara
	
	Si Contador == Longitud(Cadena)
		R <- Verdadero
		
	Sino 
		R <- Falso
	FinSi
	
FinFuncion


Algoritmo Ingresar_Entero
	
	Mensaje <- 'Por Favor Ingrese Un Numero Entero'
	Es_Entero <- Falso
	
	Mientras NO Es_Entero Hacer
		
		Escribir Mensaje
		Leer Input
		
		Si EsNumero(Input) Entonces
			Numero = ConvertirANumero(Input)
			
			Si Numero == TRUNC(Numero) Entonces
				Es_Entero <- Verdadero
				Escribir 'Numero ',Numero,' Ingresado'
			FinSi
			
		SiNo
			Mensaje <- ' Por Favor Ingrese Un Numero Entero Valido'
			Esperar 0.5 Segundos
			Borrar Pantalla
		FinSi
		
	FinMientras
	
FinAlgoritmo
