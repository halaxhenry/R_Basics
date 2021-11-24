# 기본문법 - Packages

# ggplot2 패키지 설치

install.packages("ggplot2")

# ggplot 2 패키지 로드
library(ggplot2)

# 여러 문자로 구성된 변수 생성
x <- c("a", "a", "b", "c")
x

# 빈도 막대 그래프 출력
qplot(x)

# 해당 함수에 대한 도움말을 보고 싶다면 함수명 앞에 ? 를 붙여주면 됩니다
?qplot
