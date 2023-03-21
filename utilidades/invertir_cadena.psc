Funcion R <- INVERTIR_CADENA(Cadena)
	temp = "";
	
	para i <- Longitud(Cadena) Hasta 1 Con Paso -1 Hacer
		temp = Concatenar(temp, Subcadena(Cadena, i, i));
	FinPara
	
	R <- temp;
	
FinFuncion


Algoritmo Test
	case1 = "Hola";
	case2 = "ab12g"
	case3 = "Linux"
	case4 = "C Lang"
	
	Si INVERTIR_CADENA(case1) == "aloH"
		Escribir  "TEST 1 [PASS]"
		
	SiNo
		Escribir  "TEST 1 [FAIL]"
	FinSi
	
	Si INVERTIR_CADENA(case2) == "g21ba"
		Escribir  "TEST 2 [PASS]"
		
	SiNo
		Escribir  "TEST 2 [FAIL]"
	FinSi
	
	Si INVERTIR_CADENA(case3) == "xuniL"
		Escribir  "TEST 3 [PASS]"
		
	SiNo
		Escribir  "TEST 3 [FAIL]"
	FinSi
	
	Si INVERTIR_CADENA(case4) == "gnaL C"
		Escribir  "TEST 4 [PASS]"
		
	SiNo
		Escribir  "TEST 4 [FAIL]"
	FinSi
	
FinAlgoritmo
