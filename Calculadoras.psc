


Algoritmo Calculadora
	Resultado=0
	Definir modoCalculadora Como Entero
	Definir Operacion Como Caracter
	Escribir "Escoge el modo que deseas"
	Escribir "1. Calculadora normal"
	Escribir "2. Calculadora magica"
	Leer modoCalculadora
	Segun modoCalculadora Hacer
		1: 
			Repetir
				Limpiar Pantalla
				Escribir "Ingresa un numero"
				Leer n
				Segun Operacion Hacer
					"+":
						Resultado = Resultado+n
					"-":
						Resultado = (Resultado+(-2*(Resultado)))-n
					"*":
						Resultado = Resultado*n
					"/":
						Resultado = Resultado/n
				FinSegun
				Escribir "Escribe la operacion que deseas realizar"
				Escribir "(+). Suma"
				Escribir "(-). Resta"
				Escribir "(*). Multiplicacion"
				Escribir "(/). Divison"
				Escribir "(=). Resultado"
				Leer Operacion
				Segun Operacion Hacer
					"+":
						Resultado = Resultado+n
					"-":
						Resultado = Resultado-n
					"*":
						Resultado = n
					"/":
						Resultado = n
				FinSegun
				Si Operacion=="=" Entonces
					Escribir Resultado
				FinSi
			Hasta Que Operacion=="="
		2:
			Escribir "Bienvenido a la calculadora magica"
			Escribir "Ingresa la cantidad de numeros que desea utilizar"
			Leer a
			Dimension num[a];
			
			Para i<-1 Hasta a Con Paso 1 Hacer
				Escribir "Ingresa el numero ", i
				Leer num[i]
			FinPara
			Escribir "Selecciona la operacion que deseas realizar"
			Escribir "*. Multiplicacion"
			Escribir "/. Division"
			Leer eleccion
			Dimension numerosP[a]
			NumP = pares (num, a, numerosP)
			Para i = 1 Hasta a Hacer
				Si (num[i] % 2) == 0 Entonces
					numerosP[i] = num[i];
				FinSi
			FinPara
			Dimension numerosI[a]
			Para i = 1 Hasta a Hacer
				Si (num[i] % 2) == 1 Entonces
					numerosI[i] = num[i];
				FinSi
			FinPara
			
			Segun eleccion Hacer
				"*":
					Escribir "Seleccione la operacion que desea realizar"
					Escribir "1. Multiplicar solo los numeros pares"
					Escribir "2. Multiplicar solo los numeros impares"
					Leer Opmulti
					Si Opmulti==1 Entonces
						R=numerosP[1]
						Para i = 2 Hasta a Con Paso 1 Hacer
							Si numerosP[i]<>0 Entonces
								R = R*numerosP[i];
							FinSi
							
						FinPara
						Escribir "El resultado es: ", R
					SiNo
						Si Opmulti==2 Entonces
							R=numerosI[1]
							Para i = 2 Hasta a Con Paso 1 Hacer
								Si numerosI[i]<>0 Entonces
									R = R*numerosI[i];
								FinSi
								
							FinPara
							Escribir "El resultado es: ", R
						FinSi
					FinSi
					
				"/":
					Escribir "Seleccione la operacion que desea realizar"
					Escribir "1. Sumar los numeros pares y luego dividirlos en la cantidad de numeros pares"
					Escribir "2. Sumar todos los numeros y luego divirlos en el total de ellos"
					Leer OpDivision
					Segun OpDivision Hacer
						1: 
							Suma = OpSuma (numerosP, a)
							Resultado = Division( NumP, Suma)
							Escribir Resultado
						2:
							Suma = OpSuma (num, a)
							Resultado = Division(a, Suma)
							Escribir Resultado
					FinSegun
					
			FinSegun
			
	FinSegun
	
FinAlgoritmo

Funcion cont <- pares (num, a, numerosP) 
	cont = 0;
	Para i = 1 Hasta a Hacer
		Si (num[i] % 2) == 0 Entonces
			numerosP[i] = num[i];
			cont = cont + 1;
		FinSi
	FinPara
FinFuncion

Funcion Resultado <- Division( Divisor, dividido)
	Resultado = dividido/Divisor
FinFuncion
Funcion Suma <- OpSuma(numerosP, a)
	Suma=0
	Para i <-1 Hasta a Hacer
		Suma = Suma + numerosP[i]
	FinPara
FinFuncion

