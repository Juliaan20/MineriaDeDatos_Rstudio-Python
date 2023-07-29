datos<-c(1,2,3,4,5,6,7,8,9)

nomColumnas<-c("lunes","martes","miercoles")

nomFilas<-c("Temperatura","Aire","%Humedad")

ma<-matrix(datos, nrow = 3)
ma


colnames(ma)<-nomColumnas
ma

row.names(ma)<-nomFilas
ma

avgTemp<-mean(ma["Temperatura",])
avgTemp

avgAire<-mean(ma["Aire",])
avgAire

avgHumedad<-mean(ma["%Humedad",])
avgHumedad

AVG<-c(avgTemp, avgAire, avgHumedad)

ma<-cbind(ma,AVG)

ma

####Otra manera####
####Creación de la matriz
###Punto A
victims <- c(80735, 9172, 7478, 7161, 1209, 1176, 1073, 696, 607, 511)

c.victims <- c(victims)

covid19 <- matrix(c.victims, byrow = F, ncol = 1)

print(covid19)

countries<- c("Mainland China","Italy","South Korea","Iran",
              "France", "Germany","Spain","Others", "US","Japan")
totalvic <- c("Victimas")

row.names(covid19)<- countries
covid19

colnames(covid19)<-totalvic

print(covid19)

###PuNTO B
avg<- (covid19[,1]/113739)*100
print(avg)

covid19<- cbind(covid19, avg)
print(covid19)


covid19[3,2]

covid19[,2]

colours <- c("chocolate", "chocolate1", "chocolate2",
             "chocolate3","chocolate4", "coral", "coral1", "coral2",
             "coral3","coral4")

plot(covid19[,2], main = "Porcentaje Infectados", ylab = "Porcentajes",
     col=colours, ylim =  c(0,80), xlim = c(1,10), type = "o")

legend("topright", pch=16, col=colours, legend=countries[1:5])
