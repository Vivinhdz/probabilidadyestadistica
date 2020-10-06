
#Tema: tabla de frecuencias

#1.- leer la matrz de datos
data(iris)

#2.- Exploración de la matriz de datos
names(iris)

#3.- Explorar la dimension de la matriz
dim(iris)

#4.- identificar los tipos de variables
str(iris)

#detectar si hay valores perdidos
anyNA(iris)

#6.- explorar una variable
iris$Species

iris$Sepal.Length



typeof(iris)



tabla_PL<-as.data.frame(table(PL = iris$Sepal.Length))



tabla_PL




transform(tabla_PL,
          freqAc=cumsum(Freq),
          Real= round(prop.table(Freq),3),
          RealAC=round(cumsum(prop.table(Freq)),3))


#aqui me falta hacer la tabla de clases



tabla_clases<-as.data.frame(table
                            (Petal.leng))




Tabla_clases     





transform(,
          freqAc=cumsum(Freq),
          Real= round(prop.table(Freq),3),
          RealAC=round(cumsum(prop.table(Freq)),3))
