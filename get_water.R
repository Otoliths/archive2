if (!file.exists("water")){
  dir.create("water")
}

if (!file.exists(paste0("water/",as.POSIXlt(Sys.Date(), "Asia/Shanghai")))){
  dir.create(paste0("water/",as.POSIXlt(Sys.Date(), "Asia/Shanghai")))
}

path <- paste0("water/",as.POSIXlt(Sys.Date(), "Asia/Shanghai"),"/",as.POSIXlt(Sys.time(), "Asia/Shanghai"),".json")

try(download.file("http://www.ynswj.cn/webapi/api/v1/water",path),silent = T)
