
#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.



#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

sample(1:83,39, replace = FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

muestra<-c(4, 13, 42, 53, 5, 57, 56, 46, 20, 51, 39,
            67, 33, 62, 82, 36, 34, 65, 75, 10, 6, 59,
            3, 70, 23, 17, 30, 45, 64, 73, 55, 61, 12,
            48, 41, 7, 52, 54, 58)

View(muestra)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

sample(1:90,42, replace = FALSE)

muestrairving<-c(18, 64, 54, 88, 63, 60, 4, 13, 3, 72, 89, 73, 65, 77, 20,
                 8, 14, 52, 6, 39, 49, 5, 22, 26, 24, 82,
                 58, 29, 37, 62, 7, 12, 56, 19, 69, 30, 15, 2, 57, 48, 86, 9)

View(muestrairving)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.

sample(1:78,36, replace = FALSE)

muestraprimaria<-c(71, 44, 75, 39, 61, 72, 69, 31, 63, 51, 55,
                   46, 5, 35, 26, 20, 16, 45, 8, 38, 4, 24,
                   66, 50, 28, 29, 9, 1, 73, 7, 57, 40, 67,
                   12, 48, 53)

View(muestraprimaria)

#Preescolar: 84 personas egresadas.

sample(1:84,38, replace = FALSE)

muestrapreescolar<-c(48, 14, 3, 51, 15, 7, 42, 80, 25, 37, 56, 39,  
                     1, 35, 82, 17, 32, 26, 79, 76, 9, 8, 83, 72, 68, 62,
                     64, 19, 18, 6, 11, 55, 40, 66, 75, 28, 23, 41)

View(muestrapreescolar)

#Física: 35 personas egresadas.

sample(1:35,18, replace = FALSE)

muestrafisica<-c(16, 21, 5, 32, 24, 6, 31, 9, 11, 
                 12, 22, 8, 4, 3, 15, 7, 10, 33)

View(muestrafisica)

#Telesecundaria: 83 personas egresadas.

sample(1:83,37, replace = FALSE)

muestratelesecundaria<-c(51, 52, 70, 65, 41, 81, 4, 59, 19, 29, 83,
                         36, 37, 17, 13, 62, 72, 40, 1, 44, 71, 68, 75, 54, 6, 49,
                         5, 74, 50, 47, 26, 8, 31, 15, 46, 16, 79)

View(muestratelesecundaria)

#Especial: 25 personas.

sample(1:25,13, replace = FALSE)

muestraespecial<-c(24, 23, 15, 21, 2, 6, 5, 11, 22, 8, 20, 19, 29)

View(muestraespecial)

