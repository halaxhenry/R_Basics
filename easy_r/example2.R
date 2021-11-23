가격 = c(1800, 1500, 3000)
판매량 = c(24,38,13)
제품 = c("사과", "딸기", "수박")

fruit_sell = data.frame(제품, 가격, 판매량)
fruit_sell

mean(fruit_sell$제품)
mean(fruit_sell$판매량)
