Algoritmo SistemaDeNotas
	
    Definir opcion, i, aprobados Como Entero
    Definir notas, suma, promedio, notaMayor, extra Como Real
    Definir hayNotas Como Logico
	
    Dimension notas[5]
	
    hayNotas <- Falso
	
    Repetir
		
        Escribir "===== SISTEMA DE NOTAS FE729 ====="
        Escribir "1. Ingresar notas"
        Escribir "2. Mostrar notas y categorias"
        Escribir "3. Estadisticas"
        Escribir "4. Sumar puntos extra"
        Escribir "5. Salir"
        Escribir "=================================="
        Escribir "Ingrese una opcion:"
        Leer opcion
		
        Segun opcion Hacer
			
            1:
                Escribir "===== INGRESAR NOTAS ====="
				
                Para i <- 1 Hasta 5 Hacer
					
                    Escribir "Ingrese la nota del estudiante ", i
                    Leer notas[i]
					
                    Mientras notas[i] < 0 O notas[i] > 100 Hacer
                        Escribir "Nota incorrecta."
                        Escribir "Ingrese una nota entre 0 y 100:"
                        Leer notas[i]
                    FinMientras
					
                FinPara
				
                hayNotas <- Verdadero
				
                Escribir "Notas guardadas correctamente."
                Esperar Tecla
				
            2:
                Si hayNotas = Falso Entonces
					
                    Escribir "Todavia no hay notas."
					
                Sino
					
                    Escribir "===== NOTAS Y CATEGORIAS ====="
					
                    Para i <- 1 Hasta 5 Hacer
						
                        Si notas[i] >= 90 Entonces
                            Escribir "Estudiante ", i, ": ", notas[i], " - Excelente"
                        Sino
                            Si notas[i] >= 80 Entonces
                                Escribir "Estudiante ", i, ": ", notas[i], " - Muy bueno"
                            Sino
                                Si notas[i] >= 70 Entonces
                                    Escribir "Estudiante ", i, ": ", notas[i], " - Bueno"
                                Sino
                                    Si notas[i] >= 61 Entonces
                                        Escribir "Estudiante ", i, ": ", notas[i], " - Aprobado"
                                    Sino
                                        Escribir "Estudiante ", i, ": ", notas[i], " - Reprobado"
                                    FinSi
                                FinSi
                            FinSi
                        FinSi
						
                    FinPara
					
                FinSi
				
                Esperar Tecla
				
            3:
                Si hayNotas = Falso Entonces
					
                    Escribir "Todavia no hay notas."
					
                Sino
					
                    suma <- 0
                    aprobados <- 0
                    notaMayor <- notas[1]
					
                    Para i <- 1 Hasta 5 Hacer
						
                        suma <- suma + notas[i]
						
                        Si notas[i] > notaMayor Entonces
                            notaMayor <- notas[i]
                        FinSi
						
                        Si notas[i] >= 61 Entonces
                            aprobados <- aprobados + 1
                        FinSi
						
                    FinPara
					
                    promedio <- suma / 5
					
                    Escribir "===== ESTADISTICAS ====="
                    Escribir "Promedio: ", promedio
                    Escribir "Nota mas alta: ", notaMayor
                    Escribir "Aprobados: ", aprobados
					
                FinSi
				
                Esperar Tecla
				
            4:
                Si hayNotas = Falso Entonces
					
                    Escribir "Todavia no hay notas."
					
                Sino
					
                    Escribir "===== PUNTOS EXTRA ====="
                    Escribir "Ingrese los puntos extra:"
                    Leer extra
					
                    Mientras extra < 0 Hacer
                        Escribir "Los puntos extra no pueden ser negativos."
                        Escribir "Ingrese nuevamente los puntos extra:"
                        Leer extra
                    FinMientras
					
                    Para i <- 1 Hasta 5 Hacer
						
                        notas[i] <- notas[i] + extra
						
                        Si notas[i] > 100 Entonces
                            notas[i] <- 100
                        FinSi
						
                    FinPara
					
                    Escribir "Puntos extra agregados."
                    Escribir "Las nuevas notas son:"
					
                    Para i <- 1 Hasta 5 Hacer
                        Escribir "Estudiante ", i, ": ", notas[i]
                    FinPara
					
                FinSi
				
                Esperar Tecla
				
            5:
                Escribir "Saliendo del sistema..."
				
            De Otro Modo:
                Escribir "Opcion incorrecta."
                Esperar Tecla
				
        FinSegun
		
    Hasta Que opcion = 5
	
FinAlgoritmo