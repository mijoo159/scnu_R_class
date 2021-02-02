#산술연산자 익히기
2^10 # 거듭제곱 ^ ,**
2**3 # 거듭제곱의 또 다른 표기방법
6/2  # 나눗셈 /
5%%2 # 나머지 구하기 %%
5%/%2#몫 구하기 %/%
7/2
7%/%2


#비교연산자
3 > 5
3 < 5
3 = 5 # 대입 =
3 == 5 # 같다 ==
3 == 3

var = 3 # 변수 var
var <- 10 # 대입 <-
var

3 != 5 # 부정기호 !=
3 <= 5 # 이상 <=
3 >= 5 # 이하 >=

#논리연산자 (and, or-하나라도 참이면 참, not)
x <- TRUE # x 변수에 TRUE 저장
y <- FALSE # y 변수에 FALSE 저장
z <- TRUE
v <- FALSE

x | y # OR 연산
y | v # OR 연산

x & y # AND 연산
x & z

!x # NOT 연산
!y # NOT 연산

z | x | y | v

y & x & v & z

# case 입력 c()
var1 = 1
var2 <- 1
var1
var2

var3 <- c(1,2,3,4,5)
var4 <- c("김진영","2") # 문자입력 ""
var4

# seqeunce 입력 seq()
var5 <- seq(1, 10)
var5

var6 <- seq(1, 10, by=2) # by=숫자 숫자만큼 건너뛴다
var6

var7 <- rep(var6, times=2) # rep 반복 times 횟수
var7

var8 <- rep(var6, each=2) # each 각각의 요소가 반복
var8


