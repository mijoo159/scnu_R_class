library(dplyr)
library(ggplot2)

# ggplot2의 mpg 데이터를 데이터 프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)
head(mpg, 4)
tail(mpg)

str(mpg) # 데이터 속성 확인

df_raw <- data.frame(var1 = c(1, 2, 1), var2 = c(2, 3, 2))
df_raw
df_new <- df_raw # 복사본 생성
df_new           # 출력

# 변수명 바꾸기
df_new <- rename (df_new, v2 = var2) # var2를 v2로 수정
df_new

mpg <- as.data.frame(ggplot2::mpg)
mpg_new <- mpg
mpg_new
mpg_new <- rename (mpg_new, cty = city)

# 데이터 프레임 생성
df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df
df$sum <- df$var1 + df$var2 # var_sum 파생변수 생성
df

df$var_mean <- (df$var1 + df$var2)/2 # var_mean 파생변수 생성 
df
df$mean2 <- df$var_mean
df

# mpg 통합 연비 변수 만들기
mpg <- as.data.frame(ggplot2::mpg)
mpg$total <- (mpg$cty + mpg$hwy)/2 # 통합 연비 변수 생성
head(mpg)
mean(mpg$total)


# NP
# 조건문을 활용해 파생변수 만들기
# 1. 기준값 정하기

summary(mpg$total) # 요약 통계량 산출
hist(mpg$total)    # 히스토그램 생성 

mpg$test <- ifelse(mpg$total >+ 20, "pass", "fail") # 20 이상이면 pass 그렇지 않으면 fail 부여
head(mpg, 20) # 데이터 확인

table(mpg$test) # 연비 합격 빈도표 생성 
library(ggplot2)
qplot(mpg$test) # 연비 합격 빈도 막대 그래프 생성
qplot


# 연비 등급 변수 만들기
mpg$grade2 <- ifelse(mpg$total >= 30, "A",
                     ifelse(mpg$total >= 25, "B",
                            ifelse (mpg$total >= 20, "C",
                                    "D")))
mpg$grade2 

mpg <- as.data.frame(ggplot2::midwest)
mpg

midwest <- rename (midwest, total = poptotal)
midwest<- rename (midwest, asian = popasian)
midwest
midwest$ratio <- midwest$asian/midwest$total*100
hist(midwest$ratio)

mean(midwest$ratio)
midwest$group <- ifelse(midwest$ratio > 0.4872462, "large", "small")
midwest$group
table(midwest$group)
qplot(midwest$group)

# 데이터 가공하기
library(dplyr)
exam <- read.csv("./teacher/Data/csv_exam.csv")
exam
exam %>% filter(class ==1) # exam 에서 class 가 1인 경우만 추출 
exam %>%  filter(class !=1) # 1반이 아닌 경우 추출
exam %>% filter(math < 50) # 50 점 이하인 경우
exam %>% filter(class -- 1 & math >= 50) # 1반이면서 50점 이상인 경우
# control + shipt + m = %>% 
exam %>% filter(class == 1| class ==3 | class == 5) # 1, 3, 5 반에 해당되면 추출
exam %>% filter(class %in% c(1, 3, 5)) # 1, 3, 5 반에 해당하면 추출
class1 <- exam %>% filter(class == 1) # class 가 1인 행 추출, class 1에 할당
class1 <- exam %>% filter(class == 2)

mean(class1$math) # 1반 수학 점수 평균 구하기

exam %>% select(math) # math 추출
exam %>% select(class, math, english) # 여러 변수 추출
exam %>% select(-math) # math 제외
exam %>% filter(class == 1) %>%  select(english) # class 가 1인 행만 추출한 다음 english만 추출

#일부만출력
exam %>%
  select(id, math) %>% # id, math 추출
  head(10) # 10행까지 추출 
