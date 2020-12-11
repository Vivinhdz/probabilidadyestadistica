
#Análisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos
#para su mejor uso
pisanew<-pisaitems

#Exploramos la matriz de datos
names(pisanew)
typeof(pisanew)
str(pisanew)


#visualizamos los valores que componen una variable
head(pisanew$ST24Q03)
head(pisanew$ST24Q04)

#buscamos los valores perdidos
anyNA(pisanew)
#numero total de datos perdidos en la matriz de datos
sum(is.na(pisanew)) 
#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisavivin<-na.omit(pisanew)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisavivin)

head(pisavivin)

#Empezamos a trabajar con nuestra nueva matriz de datos


#--------VARIABLE 26--------
#Agrupamiento de items
names(pisavivin)
items26<-pisavivin[,18:24]
names(items26)
head(items26[1:5,1:3])

#Renombramos las etiquetas de respuesta
levels(items26)<-c("No se que es",
                   "Nunca o casi nunca",
                   "Muchas veces en el mes",
                   "Muchas veces a la semana",
                   "Muchas veces al día")

#colocar los nombres a los indicadores

names(items26)<-c("Leo correos electrónicos",
                  "Leer chat en línea",
                  "Leer noticias en línea",
                  "Uso un diccionario o enciclopedia en línea",
                  "Buscar información en línea sobre algún tema en particular",
                  "Tomar parte en grupos de discusión o foros en línea",
                  "Buscar información práctica en línea")


l26<-likert(items26)

#Generamos el grafico de barras
plot(l26,type="bar",centered=FALSE)
