
#Tema: Tablas de frcuencias

#1.- Leer la matriz de datos
data(iris)

#1.2.- Exploración de la matriz de datos
#nombres de las variables
    #(SL) Sepal.Length = Largo del sepal
    #(SP) Sepal.Width = Ancho del sepal
    #(PL) Petal.Length = Largo del petalo
    #(PW) Petal.Width = Ancho del petalo
    #Species = Versicolor, Setosa, Virginica
names(iris)

#dimension de la matriz (cuantas observaciones y
#variables contiene)
dim(iris)

#tipo de variable
    #caracter (chr)-> letras
    #numerico (num)-> continua
    #integer (int)-> entero / discreta
    #logical (log)-> False, True
    #complex (com)-> Número complejo ejemplo:3i
str(iris)

#detecta si hay valores perdidos
anyNA(iris)

#Visualizamos la variable especies de la matriz iris
iris$Species

#2.- Revisamos el tipo de matriz de datos
    #Vector -> función c()
    #Lista
    #Matriz
    #Factor
    #Data frame (tabla que contiene datos de tipo numéricos,
                  #factor y caracter)
typeof(iris)

#3.- Convertimos la matriz de datos a una data frame y después 
    #Agrupamos los valores para la variable Petal.Length
    #y se calcula la frecuencia absoluta
tabla_PL<-as.data.frame(table(PL = iris$Petal.Length))

#4.- Mostramos la tabla de contingencia para la variable PL
    #con su respectiva frecuencia absoluta
tabla_PL

#5.- Se construye la tabla de frecuencias completas redondeando
  #las frecuencias absolutas a 3 decimales
transform(tabla_PL,
          freqAc=cumsum(Freq),
          Real= round(prop.table(Freq),3),
          RealAc=round(cumsum(prop.table(Freq)),3))

#6.- agruparemos las variables en 10 clases y se 
#calcula la frecuencia absoluta

tabla_clases<-as.data.frame(table
                            (Petal.length = factor
                              (cut(iris$Petal.Length,
                                   breaks = 9))))

#7.- visualizamos la tabla de clases
tabla_clases

#8.- construcción de la tabla de frecuencias completa redondeando las frecuencias
    #relativas a 3 decimales
transform(tabla_clases,
          freqAc=cumsum(Freq),
          Real= round(prop.table(Freq),3),
          RealAc=round(cumsum(prop.table(Freq)),3))

          