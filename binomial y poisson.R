
#probabilidad de que tenga exactamente 4 respuestas correctas

k=4
n=12
p=0.2
dbinom(k, size=n, prob=0.2)
#La probabilidaded de que tenga exactamente 4 
#respuestas correctas es muy baja (0.1328)


#probabilidad de tener 4 o menos respuestas correctas
sum(dbinom(0:4, n, p))
#la probabilidad de tener 4 o menos respuestas correctas es muy alta (0.9274)

#la probabilidad de tener dos o tres respuestas correctas
sum(dbinom(2:3, n, p))
#la probabilidad es media aprox (0.5196)


#problema del iphone11
#le asigné diferente nombre a las variables para
#mantener también las anteriores

kiphone=1
niphone=25
piphone=0.005
dbinom(kiphone, size=niphone, piphone)
#la probabilidad de encontrar un iphone11 defectuoso es muy baja (0.1108)

#Probabilidad de que 35 alumnos lleguen en 15 minutos a la entrada de la escuela
x=35
lamda=15
dpois(x,lamda)
#la probabilidad es casi nula (4.310E-06)


#Probabilidad de que 50 alumnos lleguen en 15 minutos a la entrada de la escuela
x2=50
lamda2=15
dpois(x2,lamda2)
#la probabilidad es todavía más baja que la anterior (6.413E-13)


#problemas de diapositiva 41
#Le asigne diferentes nombres a las variables para mantener
#también las anteriores

x1.1=34
lamda1.1=5
dpois(x1.1,lamda1.1)

x1.2=60
lamda1.2=5
dpois(x1.2,lamda1.2)

x1.3=120
lamda1.3=5
dpois(x1.3,lamda1.3)

#EN LOS TRES PROBLEMAS SE PRESENTA UNA PROBABILIDAD PRÁCTICAMENTE
#NULA DE QUE OCURRAN (1.328e-17)(7.023e-43)(7.577e-118)