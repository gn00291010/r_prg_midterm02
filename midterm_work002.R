##散佈圖

  #cars散布圖
plot(x = cars$speed, y = cars$dist, main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")
  #線圖
plot(x = cars$speed, y = cars$dist,type="l" , main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")
  #both
plot(x = cars$speed, y = cars$dist,type="b" , main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")

##直方圖

  #1X2直方圖
par(mfrow=c(1,2))
hist(cars$speed, main = "My first histogram")
hist(cars$dist, main = "My first histogram")

  #iris直方圖
par(mfrow=c(2,2)) #row排列
hist(iris$Sepal.Length, main = "Sepal.Length")
hist(iris$Sepal.Width , main = "Sepal.Width")
hist(iris$Petal.Length , main = "Petal.Length")
hist(iris$Petal.Width , main = "Petal.Width")

par(mfcol=c(2,2)) #col排列
hist(iris$Sepal.Length, main = "Sepal.Length")
hist(iris$Sepal.Width , main = "Sepal.Width")
hist(iris$Petal.Length , main = "Petal.Length")
hist(iris$Petal.Width , main = "Petal.Width")

  #分配直方圖
n = 100
par(mfrow=c(1,1))#設回1X1
hist(runif(n), main = paste("Distribution of", n, "uniformly distributed variables")) #均一分配
hist(rnorm(n), main = paste("Distribution of", n, "normally distributed variables")) #常態分配

  #paste
h <- "Hello"
paste(h, "world")

##盒鬚圖

  #cars盒鬚圖
par(mfrow = c(1, 2))
boxplot(cars$speed, main = "Distribution of speed variable")
boxplot(cars$dist, main = "Distribution of dist variable")

  #iris盒鬚圖
par(mfrow = c(2, 2))
boxplot(iris$Sepal.Length ~ iris$Species, main = "Sepal length by species") #~以品種分類
boxplot(iris$Sepal.Width ~ iris$Species, main = "Sepal width by species")
boxplot(iris$Petal.Length ~ iris$Species, main = "Petal length by species")
boxplot(iris$Petal.Width ~ iris$Species, main = "Petal width by species")

##長條圖

  #iris test
par(mfrow = c(1, 1))
table(iris$Species) #列表
barplot(table(iris$Species))

  #mtcars
table(mtcars$gear) #列表
x <- max(table(mtcars$gear))
barplot(table(mtcars$gear),ylim=c(0,x+5))

  #assign x y
vehicle_names <- row.names(mtcars) #assign一堆標籤
barplot(mtcars$hp, names = vehicle_names, main = "Horse power for each vehicles",xlab = "Horse power",horiz = T, las = 1, cex.names = 0.5) 
#horiz = T 水平表示 las為X Y標籤的表示方式,cex.names似乎是大小

#作業
par(mfrow = c(2,3))
plot(x = cars$speed, y = cars$dist, main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")
plot(x = cars$speed, y = cars$dist,type="l" , main = "My first scatter plot", xlab = "Speed", ylab = "Dist", sub = "The fasterer a car drives, the longer braking distance is needed.")
hist(runif(n), main = paste("Distribution of", n, "uniformly distributed variables")) #均一分配
boxplot(cars$speed, main = "Distribution of speed variable")
boxplot(cars$dist, main = "Distribution of dist variable")
barplot(mtcars$hp, names = vehicle_names, main = "Horse power for each vehicles",xlab = "Horse power",horiz = T, las = 1, cex.names = 0.5) 
