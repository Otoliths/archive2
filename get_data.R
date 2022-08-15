options(timeout=1000)

install.packages("jsonlite")
install.packages('curl')

path1 <- paste0("water/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")

water <- jsonlite::fromJSON("http://www.ynswj.cn/webapi/api/v1/water",fill_na = TRUE)

saveRDS(water,path1)


path2 <- paste0("rain/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")

rain <- jsonlite::fromJSON("http://www.ynswj.cn/webapi/api/v1/rain",fill_na = TRUE)

saveRDS(rain,path2)
