# 결측치 찾기 및 만들기 - 누락된 값, 비어있는 값
df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
# 결측치 확인하기
is.na(df)
table(is.na(df))

# 변수별로 결측지 확인하기
table(is.na(df$sex))
table(is.na(df$score))

#결측치 포함된 상태로 분석
mean(df$score)
sum(df$score)

#결측치 있는 행 제거
library(dplyr)

mean(df_nomiss$score) # 평균 산출

