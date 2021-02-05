# 순서대로 정렬하기

# 오름차순으로 정렬하기
exam %>%  arrange(math)

# 내림차순
exam %>%  arrange(desc(math))

#정렬 기준 변수 여러개 지정
exam %>%  arrange(class, math) # class 및 math 오름차순 정렬
exam %>%  arrange(desc(class), math) # class 내림차순 및 math 오름차순 정렬

mpg <- as.data.frame(ggplot2::mpg)
mpg %>% filter(manufacturer == "audi") %>% 
  arange(desc(hwy)) %>% 
  head(5)
exam %>% 
  mutate(total = math + english + science) %>% # 총합 변수 추가 
  head                                         # 일부 추룰

# 여러 파생변수 한 번에 추가하기
exam %>% 
  mutate(total = math + english +science, # 총합 변수 추가
         mean = (math + english +science)/3) %>% # 총 평균 변수 추가 
  head # 일부 추룰

exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

# 추가한 변수를 'dplyr' 코드에 바로 활용하기
exam %>% 
  mutate(total = math + english + science) # 총합 변수 추가
  arrange(total) %>% 
  head # 일부 추룰

  
mpg <- as.data.frame(ggplot2::mpg)
mpg_new <- mpg        

mpg_new <- mpg_new %>% mutate(mean = total/2) # 평균 변수 만들기
mpg_new

mpg_new %>% 
  arrange(desc(mean)) %>% 
  head(3)

# 집단별로 요약하기
exam %>% summarise(mean_math = mean(math)) # math 평균 산출

exam %>% group_by(class) %>%   # Class 별로 분리
  summarise(mean_math = mean(math)) # math 평균 산출

exam %>% 
  group_by(class) %>%                # class 별로 분리
  summarise(mean_math = mean(math),  # math 평균
            sum_math = sum(math),    # math 합계
            median_math = median(math), # 중앙값
            n = n())                    # 학생 수

#sd() 표준편차
#n() 빈도

# 각 집단별로 다시 집단 나누기
mpg %>% 
  group_by(manufacturer, drv) %>% # 회사별, 구방방식별
  summarise(mean_cty = mean(cty)) %>% # cty 평균 산출
  head(10) # 일부 출력 

mpg %>%
  group_by(manufacturer) %>% # 회사별로 분리
  filter(class == "suv") %>% # suv 추출
  mutate(tot = (cty+hwy)/2) %>% # 통합 연비 변수 생성
  summarise(mean_tot = mean(tot)) %>% # 통합 연비 평균 산출
  arrange(desc(mean_tot)) %>% # 내림차순 정렬
  head(5) # 일부 출력 

test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                   midterm = c(60, 80, 70, 90, 58))
test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(50, 80, 40, 70, 58))
total <- left_join(test1, test2, by ="id")                  
total

group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 70, 90, 58))
group_b <- data.frame(id = c(1, 2, 3, 4, 5),
                     test = c(50, 80, 40, 70, 58))
group_all <- bind_rows(group_a, group_b) # 데이터 합쳐서 group_all 에 할당




