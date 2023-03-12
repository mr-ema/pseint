Funcion R <- EsNumero(Cadena)
	Definir Contador Como Entero
	Dimension Numeros[10]
	
	Para i <- 1 Hasta 10 Hacer
		Numeros[i] = ConvertirATexto(i - 1)
	FinPara
	
	Para i <- 1 Hasta Longitud(Cadena) Hacer
		Si Subcadena(Cadena, i, i) == "-" | Subcadena(Cadena, i, i) == "+" Entonces
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

Algoritmo Test
	case1 = "123"
	case2 = "a2v"
	case3 = "000"
	case4 = "01"
	case5 = "avv"
	case6 = "+0"
	case7 = "-2"
	
	Si EsNumero(case1)
		Escribir "TEST 1 [PASS]"
		
	SiNo
		Escribir "TEST 1 [FAIL]"
	FinSi
	
	Si !EsNumero(case2)
		Escribir "TEST 2 [PASS]"
		
	SiNo
		Escribir "TEST 2 [FAIL]"
	FinSi
	
	Si EsNumero(case3)
		Escribir "TEST 3 [PASS]"
		
	SiNo
		Escribir "TEST 3 [FAIL]"
	FinSi
	
	Si EsNumero(case4)
		Escribir "TEST 4 [PASS]"
		
	SiNo
		Escribir "TEST 4 [FAIL]"
	FinSi
	
	Si !EsNumero(case5)
		Escribir "TEST 5 [PASS]"
		
	SiNo
		Escribir "TEST 5 [FAIL]"
	FinSi
	
	Si EsNumero(case6)
		Escribir "TEST 6 [PASS]"
		
	SiNo
		Escribir "TEST 6 [FAIL]"
	FinSi
	
	Si EsNumero(case7)
		Escribir "TEST 7 [PASS]"
		
	SiNo
		Escribir "TEST 8 [FAIL]"
	FinSi
	
	
FinAlgoritmo

