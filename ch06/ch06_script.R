#-----------------------------------
# ch06 - 조건에 맞는 데이터 추출하기
#-----------------------------------

install.packages("dplyr")
library(dplyr)

exam <- read.csv("../datas/csv_exam.csv")

exam

exam %>% filter(class == 1 | class == 2)
exam %>% filter(class >= 3)
exam %>% filter(class != 3)
exam %>% filter(class >= 3)




View(exam)



