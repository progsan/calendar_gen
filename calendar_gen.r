# Печать календаря на определенный месяц с подсветкой дат по значениям векторов
# @author: prog_san @date: 13.09.2025
github
library(calendR)

year <- 2025
month <- 9

date_leap <- as.Date(paste0(year, "-", month, "-01"), "%Y-%m-%d")

fills <- rep(NA, lubridate::days_in_month(date_leap))

fills[c(2, 9, 16, 23, 30)] <- "Лекции ОиИАД"
fills[c(6, 13, 20, 27)] <- "Практика ОиИАД"

calendR(year = year,
        month = month,
        start = "M",  
        special.days = fills,
        special.col = 3:4,
        legend.pos = "bottom")