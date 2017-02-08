##���G��

#cars������
plot(x = cars$speed, y = cars$dist, main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")
#�u��
plot(x = cars$speed, y = cars$dist,type="l" , main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")
#both
plot(x = cars$speed, y = cars$dist,type="b" , main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")

##�����

#1X2�����
par(mfrow=c(1,2))
hist(cars$speed, main = "My first histogram")
hist(cars$dist, main = "My first histogram")

#iris�����
par(mfrow=c(2,2)) #row�ƦC
hist(iris$Sepal.Length, main = "Sepal.Length")
hist(iris$Sepal.Width , main = "Sepal.Width")
hist(iris$Petal.Length , main = "Petal.Length")
hist(iris$Petal.Width , main = "Petal.Width")

par(mfcol=c(2,2)) #col�ƦC
hist(iris$Sepal.Length, main = "Sepal.Length")
hist(iris$Sepal.Width , main = "Sepal.Width")
hist(iris$Petal.Length , main = "Petal.Length")
hist(iris$Petal.Width , main = "Petal.Width")

#���t�����
n = 100
par(mfrow=c(1,1))#�]�^1X1
hist(runif(n), main = paste("Distribution of", n, "uniformly distributed variables")) #���@���t
hist(rnorm(n), main = paste("Distribution of", n, "normally distributed variables")) #�`�A���t

#paste
h <- "Hello"
paste(h, "world")

##��Ž��

#cars��Ž��
par(mfrow = c(1, 2))
boxplot(cars$speed, main = "Distribution of speed variable")
boxplot(cars$dist, main = "Distribution of dist variable")

#iris��Ž��
par(mfrow = c(2, 2))
boxplot(iris$Sepal.Length ~ iris$Species, main = "Sepal length by species") #~�H�~�ؤ���
boxplot(iris$Sepal.Width ~ iris$Species, main = "Sepal width by species")
boxplot(iris$Petal.Length ~ iris$Species, main = "Petal length by species")
boxplot(iris$Petal.Width ~ iris$Species, main = "Petal width by species")

##������

#iris test
par(mfrow = c(1, 1))
table(iris$Species) #�C��
barplot(table(iris$Species))

#mtcars
table(mtcars$gear) #�C��
x <- max(table(mtcars$gear))
barplot(table(mtcars$gear),ylim=c(0,x+5))