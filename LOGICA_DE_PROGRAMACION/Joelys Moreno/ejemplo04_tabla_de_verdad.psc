Algoritmo ejemplo04_Tablas_de_Verdad
	// tabla de verdad conjuncion
	Escribir 'conjuncion tabla de verdad'
	Escribir Verdadero, 'y', Verdadero, '->', Verdadero Y Verdadero
	Escribir Verdadero, 'y', Falso, '->', Verdadero Y Falso
	Escribir Falso, 'y', Verdadero, '->', Falso Y Verdadero
	Escribir Falso, 'y', Falso, '->', Falso Y Falso
	Escribir '--------------'
	Escribir 'disyuncion tabla de verdad'
	Escribir Verdadero, 'o', Verdadero, '->', Verdadero Y Verdadero
	Escribir Verdadero, 'o', Falso, '->', Verdadero
	Escribir Falso, 'o', Verdadero, '->', Verdadero Y Verdadero
	Escribir Falso, 'o', Falso, '->', Falso Y Falso
	Escribir 'negacion tabla de verdad'
	Escribir Verdadero, '->',  NO Verdadero
	Escribir Falso, '->',  NO Falso
FinAlgoritmo
