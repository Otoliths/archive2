options(timeout=1000)

# install.packages("jsonlite")
# install.packages('curl')
# 
# path1 <- paste0("water/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")
# 
# water <- jsonlite::fromJSON("http://www.ynswj.cn/webapi/api/v1/water",fill_na = TRUE)
# 
# saveRDS(water,path1)
# 
# 
# path2 <- paste0("rain/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")
# 
# rain <- jsonlite::fromJSON("http://www.ynswj.cn/webapi/api/v1/rain",fill_na = TRUE)
# 
# saveRDS(rain,path2)

# install.packages('httr')
# 
# library(httr)
# 
# path1 <- paste0("water/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")
# water <- content(GET("http://www.ynswj.cn/webapi/api/v1/water?extra=area&itm=1"),as="parsed") 
# saveRDS(water,path1)
# 
# path2 <- paste0("rain/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")
# rain <- content(GET("http://www.ynswj.cn/webapi/api/v1/rain"),as="parsed") 
# saveRDS(rain,path2)



library(httr2)

req1 <- request("http://www.ynswj.cn/webapi/api/v1/water?")

resp1 <- req1 %>% 
  req_url_query(`extra` = "area", `itm` = 1) %>% 
  req_perform()
water <- resp1 %>% resp_body_json()
path1 <- paste0("water/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")
saveRDS(water,path1)


req2 <- request("http://www.ynswj.cn/webapi/api/v1/rain?")

resp2 <- req2 %>% 
  req_url_query(`extra` = "area", `itm` = 1) %>% 
  req_perform()
rain <- resp2 %>% resp_body_json()
path2 <- paste0("rain/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".rds")
saveRDS(rain,path2)
