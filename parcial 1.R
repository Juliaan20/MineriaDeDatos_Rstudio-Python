
data.frame(Titanic)


###cuantos sobrebibieron y cuantos no####

df=Titanic
data(Titanic)
View(Titanic) 


### conocer cuantos adultos y niños sobrebivieron####

dato<-data.frame(Titanic)
attach(dato)
tabla<-table(Age)
tabla
Edad=c("Child","Adult")


##############grafica########

barplot(table(Age), main = "Sobrevivientes",
        xlab = "Poblacion", ylab = "Sobrevivio", 
        col = c("blue","red"))
legend("topright", pch=16, col=c("blue","red" ), legend=Edad)
