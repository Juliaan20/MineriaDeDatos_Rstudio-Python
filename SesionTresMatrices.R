###Matriz Estructura####
##matrix(data, ncol, nrow, byrow= False)
##Paso 1 CREAR MATRIZ###
ma<-matrix(1:10)
ma

ma<-matrix(1:10, nrow= 5)
ma

ma<-matrix(1:10, byrow = TRUE)
ma
##PASO 2 FUNCIONES ####
dim(ma)

###colnames y rownames - cbind y rbind

mode(ma)

length(ma)

is.matrix(ma)

ma[5,2]

####PASO 3 EJEMPLO####
##Agregar columna
ma2<-cbind(ma, c(12,25,36,98,74))
ma2

##Agregar Fila
ma2<-rbind(ma2, c(66,25,17))
ma2

####PASO 4######
datos=matrix(c(52,36,54,47,98,21,36,12,54), nrow=3)
datos

###nombres a las columnas
colnames(datos)<-c("Edad","Peso","Altura")
datos

##nombres filas
rownames(datos)<-c("Luisa","Camilo","Andrés")
datos

mode(ma)

mode(datos)

###Gráficas
x<-1:50
plot(x)

y<-x+rnorm(x)
plot(x,y)

plot(density(y))

d<-density(y)

plot(d, main="Diagrama de Densidad")
polygon(d, col="blue", border="orange")



hist(y)

boxplot(y)

pie(y)

plot(x,y, pch=15)

colores<-rainbow(length(x))

plot(x,y, col=colores)

##Paso agregar Líneas

plot(y) ; abline(v=25, lty=2)

plot(y); abline(h=40, lty=4, col="red")

plot(y); abline(h=40, lty=4, col="red") ; abline(v=25, lty=3, col="blue")

plot(y, main="Gráfica de Predicción", xlab="Tiempo", ylab="Temperatura");
z<-y*y/10; 
points(z,col="red",pch=19);
points(25, mean(y), col="blue",pch=19); 
text(25, mean(y)+5,"Media", col="blue")

data()

print(AirPassengers)

airquality

