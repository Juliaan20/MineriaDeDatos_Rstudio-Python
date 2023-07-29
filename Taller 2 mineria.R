
#PUNTO 1A

victims <-matrix (c(607659, 3950931, 3769523, 1001965, 657129, 628259, 624026, 606036, 470973 ,428238))


c.victims <- c(victims)

covid19 <- matrix(c.victims, byrow = F, ncol = 1)

print(covid19)

countries<- c("US", "Brazil","India","Russia","Peru",
              "south Africa", "colombia","Mexico","Spain", "Argentina")

totalvic <- c("Victimas")

row.names(covid19)<- countries
covid19

colnames(covid19)<-totalvic

print(covid19)

#PUNTO 1B

avg<- (covid19[,1]/26128340)*100
print(avg)

covid19<- cbind(covid19, avg)
print(covid19)


covid19[3,2]

covid19[,2]

#PUNTO 1C


##n<-c(628259,624026,606036,470973,428238)## primeros 5 paises ##


colours <- c("chocolate", "chocolate1", "chocolate2",
             "chocolate3","chocolate4", "coral", "red", "blue",
             "black","orange")


plot(covid19[,2], main = "Porcentaje Infectados", ylab = "Porcentajes",
     col=colours, type = "o");

legend("top", pch=10, col=colours, legend=countries[1:5],lty =0:1, cex = 0.5 )

   
#PUNTO 1D


n<-c(628259,624026,606036,470973,428238)

pierpercent<-round(100*n/sum(n),1)

pie(n, labels = pierpercent, main= "Porcentajes de Infectados: 25.795.050", col= rainbow(length(n)))
legend("topright", c("South Africa","Colombia"," Mexico", "Spain" , "Argentina"), cex = 0.5,
       fill = rainbow(length(n)))

#PUNTO 1E

##torta en 3D##
       
library(plotrix)
   
n<-c(628259,624026,606036,470973,428238)

pierpercent<-round(100*n/sum(n),1)

pie3D(n, labels = pierpercent, main= "Porcentajes de Infectados: 25.795.050", col= rainbow(length(n)))
legend("topright", c("South Africa","Colombia"," Mexico", "Spain" , "Argentina"), cex = 0.5,
       fill = rainbow(length(n))) 



 #punto 2# #A & B#

precip <- matrix(c(67.0, 54.7, 7.0, 48.5, 14.0, 17.2, 20.7,13.0, 43.4, 40.2))
titulopre(precip)<-c("precipitaciones")
precip

city<- c("mobile","juneu","phonix","little rock",
         "los angeles", "sacremento","san fransico","denver", "hartford","wilmington")


avg<- (precip[,1]/26128340)*100
print(avg)

precip<- cbind(precip, avg)
print(precip)

row.names(precip)<- city
precip

precip[,2]  
      

#PUNTO 2C#

precip <- matrix(c(67.0, 54.7, 7.0, 48.5, 14.0, 17.2, 20.7,13.0, 43.4, 40.2))

plot(density(precip), xlab = "precipitaciones", ylab = "Densidad", main = "Densidad de las Precipitaciones")

abline(v = mean(precip), lty = 2, col = "darkgreen", lwd = 2)

abline(v = median(precip), col = "darkred", lwd = 2)

text(24, 0.15, "Media", col = "darkgreen")

text(22, 0.15, "Mediana", col = "darkred")

sdmas <- mean(precip) + sd(precip) 

sdmenos <- mean(precip) - sd(precip)

abline(v = sdmas)

abline(v = sdmenos) 

################################



dpois(1,12) #12 es porque un año tiene 12 meses, #1 es porque solo esiten una variable (que llueva)

