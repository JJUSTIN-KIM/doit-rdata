#####################################################
# project ch03  ch03_1_variable.r
#

a=1
b=2
c="hello world"
a=12
c<-a+b;
c
# -----------------
var1 <- seq(1, 10, by=2)
var1;
a=10;
if(a==10){
  a;
} else {
  100;
}
# -----------------
# 변수 생성 이름 - 숫자시작, _, - 시작은 오류
# 알파벳으로 시작해야 합니다
# 123abc = 20;
# _abc = 20;
# abcv-abc = 20;
# -----------------
printf("%d", a)

var1 <- c(1,2,4,7,8)
var2 <- c(1:5)
var3 <- seq(1:5)
var4 <- seq(1, 10, by=2)
var5 <- seq(1, 10, by=3)
#View(var3)

var1+2
var1+var2


paste(str5, collapse = ",")
paste(str5, collapse = " ")
paste(str1, str2, collapse = ",")


install.packages("ggplot2")

library(ggplot2)

qplot(str4)
qplot(var1)

x <- c("a", "b", "c", "d", "e")
qplot(x)

qplot(data=mpg, x=hwy)
qplot(data=mpg, x=cty)
qplot(data=mpg, x=drv, y=hwy)
qplot(data=mpg, x=drv, y=hwy, geom="line")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot")
qplot(data=mpg, x=drv, y=hwy, geom="boxplot", colour=drv)


y <- c(80, 60, 70, 50, 90)
y;
max(y)
mean(y)



