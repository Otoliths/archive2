if (!file.exists("rain")){
  dir.create("rain")
}

if (!file.exists(paste0("rain/",as.POSIXlt(Sys.Date(), "Asia/Shanghai")))){
  dir.create(paste0("rain/",as.POSIXlt(Sys.Date(), "Asia/Shanghai")))
}

path <- paste0("rain/",as.POSIXlt(Sys.Date(), "Asia/Shanghai"),"/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".json")

try(download.file("http://www.ynswj.cn/webapi/api/v1/rain",path),silent = T)