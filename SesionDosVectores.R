####Prueba###
2+2
plot(0)
#####
datos=c(2.3,3.4,4.5,5.0,2.6,3.4,4.2)
estudiantes=c("Julian","Andres","Camila","Lucia","Andrea","pablo","Natalia")

###rapida###
df<-c(1:50)

##medidas de tendencias central
##media
mediaDatos<-mean(datos)

#mediana
medianaDatos<-median(datos)

#moda
modaDatos<-(sort(table(datos),decreasing = TRUE))
modaDatos

library(modes)
modes(datos)

library(modeest)
mfv(datos)

##QUANTILES
porcentajes<-quantile(datos)
porcentajes

###QUANTILES PERSONALIZADOS
porPerson<-quantile(datos, c(.17,.35, .55,.80))
porPerson

summary(datos)

###graficar
barplot(porcentajes)

##Graficar NOTAS DE ESTUDIANTES POR CORTE
barplot(datos,main = "Notas Estudiantes 1 Corte", 
        xlab = "Estudiantes",ylab="Notas", names.arg = estudiantes, 
        col = "darkred", horiz=TRUE)

###vECTOR CON EDADES
edades<-c(15,12,17,18,18,12,19,17,17,20)

tabla<-table(edades)
tabla

###graficar edades x factor
barplot(table(edades), main="Edades por factor", xlab="Edades", 
        ylab="Conteo", border="darkred", col="blue", density=10, horiz = TRUE)







