# Utilidades Y Algoritmos - PSeInt
Aqui podras encontrar algoritmos basicos y tambien funciones utiles como
chequear si el input es un numero valido para evitar que el programa se rompa.

</br>

## Navegacion
- [Validar Numero](https://github.com/mr-ema/pseint#validar-numero)
- [Invertir Cadena](https://github.com/mr-ema/pseint#invertir-cadena)
- [Invertir Arreglo](https://github.com/mr-ema/pseint#invertir-arreglo)
- [Efecto Typing](https://github.com/mr-ema/pseint#efecto-typing)

</br>
</br>

## Utilidades
Funciones utiles como por ejemplo chequear si el input del usuario es un numero valido para evitar que el programa se rompa.

</br>

### Validar Numero
Esta funcion toma una `Cadena` e itera sobre ella comprobando que contenga solo numeros. Finalmente returna `Verdadero` o `Falso`.

```psc
// Le puedes pasar tanto numeros negativos como positivos.
// Despues de validar el input debes usar la function
// `CONVERTIRANUMERO` para convertir la cadena a numero.

Funcion R <- ES_NUMERO(Cadena)
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
```

</br>

### Invertir Cadena
Esta funcion toma una `Cadena` y returna una copia invertida de la `Cadena`

```psc
Funcion R <- INVERTIR_CADENA(Cadena)
	temp = "";
	
	para i <- Longitud(Cadena) Hasta 1 Con Paso -1 Hacer
		temp = Concatenar(temp, Subcadena(Cadena, i, i));
	FinPara
	
	R <- temp;
	
FinFuncion
```

</br>

### Invertir Arreglo
Esta funcion toma un `Arreglo` y su tamaño e invierte el orden de todos su elementos. \
Ten en cuenta que el arreglo que le pases sera modificado debido a que es pasado por referencia

```psc
Funcion INVERTIR_ARR(Arr Por Referencia, N)
	Dimension  temp[N];
	
	Para i <- N Hasta 1 Hacer
		temp[i] = Arr[i];
	FinPara
	
	Para i <- 1 Hasta N Hacer
		Arr[i] = temp[(N+1) - i]
	FinPara
	
FinFuncion
```

</br>

### Efecto Typing
Esta funcion toma una `Cadena` e itera sobre ella imprimiento cada caracter en pantalla con cierto `Delay` en `ms`.

El `Delay` es calculando tomando la cadena completa. Es decir que si le pasas un delay de `500ms` se tardara
`0.5 segundos` en imprimir toda la cadena.

```psc
Funcion EFECTO_TYPING(Cadena, Delay)
	
	Delay = Delay / Longitud(Cadena)
	
	// Aveces Las Cadenas Empiezan En 0. Si Es El Caso Remplaza el 1 con el 0
	Para i Desde 1 Hasta Longitud(Cadena) Hacer
		Esperar Delay Milisegundos
		Escribir Sin Saltar Subcadena(Cadena, i, i);
	FinPara
	
	Escribir ""
	
FinFuncion
```

</br>

En caso de que quieras pasar mas de un parametro por ejemplo: 

```psc
EFECTO_TYPING("Hola", Alguna_Variable, 1200); // Error

// Esto resultara en un error ya que en `PSeInt` no puedes tomar parametros infinitos.

// Una solucion a esto es hacer lo siguiente:
mensaje = CONCATENAR("Hola Que Tal", Alguna_Variable, 1200);
EFECTO_TYPING(mensaje, 1200);

// O Esto:
EFECTO_TYPING( CONCATENAR("Hola Que Tal", Alguna_Variable), 1200 );

// Y si es un numero:
EFECTO_TYPING( CONCATENAR("Hola Que Tal", CONVERTIRATEXTO(Alguna_Variable) ), 1200 );
```

