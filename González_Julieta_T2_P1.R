###ECUACIÓN CUADRÁTICA###
#Dados los valores de los coeficientes a, b, c de la ecuación ax2 + bx + c = .
#Poner los valores a evaluar en la ecuación 
#Convertir a un valor numérico
as.numeric (readline ( "Valor de tu variable a: " )) -> a_value
as.numeric (readline ( "Valor de tu variable b: " )) -> b_value
as.numeric (readline ( "Valor de tu variable c: " )) -> c_value 

#Como tratamos con una ecuación cuadrática y nos interesan las soluciones reales
#Basta con evaluar la determinante, es decir, la operación debajo de la raíz cuadrada en la fórmula
#Tomando en cuenta que: (-b±√(b²-4ac))/(2a)
#Esta determinante nos dice nuestras soluciones serán reales o imaginarias
#Si el valor de la determinante es positivo, tenemos una solución real
#Si es negativo, tenemos un número imaginario

#-b_value + (sqrt(b_value^2-4*a_value*c_value)/(2*a_value))
#-b_value - (sqrt(b_value^2-4*a_value*c_value)/(2*a_value))

###Dos soluciones cuando estas son reales.
###Cuando se tenga solo una solución indique por qué solo se tiene una solución
###Cuando no se tienen soluciones reales lo indique y explique por qué.

det_val <- (b_value^2 - (4*a_value*c_value))

if (det_val > 0 ) { #evalúa si el resultado es mayor a 0, o sea, un número positivo y real 
  print ("Tu ecuación tiene dos soluciones reales.")
} else if (det_val < 0 ) { #si la det. < 0, negativa, las raíces son complejas, o sea imaginarias
  print ("No hay soluciones reales, la determinante es compleja, con un valor menor a cero.") 
} else if (det_val == 0) { #una determinante igual a 0 es indicativa de 1 sóla solución real 
  print ("Tu ecuación tiene sólo una solución real, al ser la determinante (b^2-4*a*c) igual a cero.")
}

