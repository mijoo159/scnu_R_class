English <- c(90, 80, 60, 70)
English
Math <- c(50, 60, 100, 20)
Math
Class <- c(1, 1, 2, 2)
Class

#data_frame
d_frame <- data.frame(English, Math, Class)
d_frame


#평균 구하기
mean(d_frame$English)

d_frame_02 <- data.frame(English = c(90, 50, 10, 30), Math=c(50, 80, 40, 30), Class=c(1, 1, 2, 2))
d_frame_02


# excel 불러오기
library(readxl)
read_data_excel <- read_excel("./teacher/Data/excel_exam.xlsx")
View(read_data_excel)

# excel sheet 가져오기
read_sheet <- read_excel("./teacher/Data/0203_sample_data.xlsx", sheet=3)
View(read_sheet)

read_csv_data <- read.csv("./teacher/Data/0203_sample_csv_data.csv")
View(read_csv_data)


