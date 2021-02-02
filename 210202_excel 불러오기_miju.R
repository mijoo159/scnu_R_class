# 엑셀 불러오기
install.packages("readxl")
library(readxl)
test <- read_excel("./teacher/Data/excel_exam.xlsx")
View(test)
