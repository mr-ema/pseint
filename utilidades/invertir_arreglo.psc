Funcion INVERTIR_ARR(Arr Por Referencia, N)
	Dimension  temp[N];
	
	Para i <- N Hasta 1 Hacer
		temp[i] = Arr[i];
	FinPara
	
	Para i <- 1 Hasta N Hacer
		Arr[i] = temp[(N+1) - i]
	FinPara
	
FinFuncion


Algoritmo Test
	Dimension case1[3];
	case1[1] = 1;
	case1[2] = 2;
	case1[3] = 3;
	
	Dimension case2[3];
	case2[1] = "kraken";
	case2[2] = "dragon";
	case2[3] = "demonio";
	
	Escribir Sin Saltar "ANTES: "
	Para Cada Elem De case1 Hacer
		Escribir Sin Saltar Elem, " ";
	FinPara
	Escribir ""
	
	Escribir Sin Saltar "DESPUES: "
	INVERTIR_ARR(case1, 3);
	Para Cada Elem De case1 Hacer
		Escribir Sin Saltar Elem, " ";
	FinPara
	
	Escribir ""
	Escribir ""
	
	Escribir Sin Saltar "ANTES: "
	Para i <- 1 Hasta 3 Hacer
		Escribir Sin Saltar case2[i], " ";
	FinPara
	Escribir ""
	
	Escribir Sin Saltar "DESPUES: "
	INVERTIR_ARR(case2, 3);
	Para i <- 1 Hasta 3 Hacer
		Escribir Sin Saltar case2[i], " ";
	FinPara
	Escribir ""

FinAlgoritmo
