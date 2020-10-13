


#1.- Leer la matriz de datos
cars<-data(mtcars)

#1.2- Exploración de la matriz de datos
#nombres de las variables
  #mpg
  #cyl
  #disp
  #hp
  #drat
  #wt
  #qsec
  #vs
  #am
  #gear
  #carb
names(mtcars)

#dimension de la matriz (cuantas observaciones y
#variables contiene)
dim(mtcars)

#tipo de variable
  #numérico (num)-> continua
str(mtcars)

#detecta si hay valores perdidos
anyNA(mtcars)

#visualizamos la variable hp de la matriz mtcars
mtcars$hp

#2.- Revisamos el tipo de matriz de datos
  #lista
typeof(mtcars)

#3.- Convertimos la matriz de datos a una data frame y después
# agrupamos los valores para la variable WT y se calcula la
#frecuencia absoluta
tabla_PL<-as.data.frame(table(PL = mtcars$wt))

#4.- mostramos la tabla de contingencia para la variable PL
#con su respectiva frecuencia absoluta
tabla_PL

#5.- Se construye la tabla de frecuencias completas redondeando
# las frecuencias absolutas a 1 decimal
transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),5),
          RelAc=round(cumsum(prop.table(Freq)),5))

#6.- agruparemos las variables en 5 clases y se
#calcula la frecuencia absoluta
tabla_clases<-as.data.frame(table
                            (wt = factor
                              (cut(mtcars$wt,
                                   breaks = 5))))

#7.- visualizamos la tabla de clases
tabla_clases

#8.- construcción de l tabla de frecuencias completa redondeando las frecuencias
#relativas a 4 decimales
transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),4),
          RelAc=round(cumsum(prop.table(Freq)),3))
