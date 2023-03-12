# Utilidades Y Algoritmos - PSeInt
Aqui podras encontrar algoritmos basicos y tambien funciones utiles como
chequear si el input es un numero valido para evitar que el programa se rompa.

</br>

## Utilidades

### Verificar Si Input Es Un Numero
Esta function toma una `Cadena` e itera sobre ella comprobando que contenga solo numeros. Finalmente returna `Verdadero` o `Falso`.

```psc
// Le puedes pasar tanto numeros negativos como positivos.
// Despues de validar el input debes usar la function
// `CONVERTIRANUMERO` para convertir la cadena a numero.

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
```
