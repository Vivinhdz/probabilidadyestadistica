
#X es una variable normalmente distribuida 
#con una media de 30 y una desviación
#estándar de 4.

#problema a

pnorm(2.5)
pnorm(40,mean=30, sd=4, lower.tail=TRUE)
#la probabilidad normal es muy alta (0.9937)

#problema b

pnorm(-2.25)
pnorm(21,mean=30,sd=4,lower.tail = TRUE)
#la probabilidad normal es demasiado baja (0.0122)

#problema c

pnorm(1.25)
pnorm(0)

pnorm(35,mean=30, sd=4, lower.tail=TRUE) - pnorm(30,mean=30, sd=4, lower.tail=TRUE)
#la probabilidad normal es solamente un poco baja (0.3943)


#EJERCICIOS DE EXAMEN

#problema a
pnorm(15)
pnorm(75,mean=45,sd=2,lower.tail = TRUE)
#este es un evento seguro ya que la probabilidad es de 1

#problema b
pnorm(-16)
pnorm(13,mean=45,sd=2,lower.tail = TRUE)
#la probabilidad normal es prácticamente nula

#problema c
pnorm(7.5)
pnorm(18.5)
pnorm(82,mean=45, sd=2, lower.tail=TRUE)-pnorm(60,mean=45, sd=2, lower.tail=TRUE)
#la probabilidad es prácticamente nula (3.186e-14)


#Timmy probabilidad

n=1000
hist(rnorm(n,500,100),20, col= "blue")
abline(v=585,col=2)

#¿Es P(x<585) > 70%?
pnorm(585,mean=500, sd=100)*(100)
#Timmy obtuvo una puntuación mejor que el 80.23% de los
#estudiantes que tomaron el examen y será admitido en esta
#universidad.


#INGRESO A LA BENV

n=2600
hist(rnorm(n,1000,100),20, col= "red")
abline(v=1185,col=45)

#¿Es P( X < 1185) > 90%?
pnorm(1185,mean=1000, sd=100)*(100)
#Hay una probabilidad muy elevada de ser aceptado en la BENV (96.78%)


#PRUEBA DE HIPÓTESIS T-Test

set.seed(10)
x <- rnorm(100,10) # Creación de una variable aleatoria de media 10
Media <- 10
test <- t.test(x, mu=Media) # Comparación de la media muestral con la media
print(test)

#Se rechaza la hipótesis nula (Ho) 