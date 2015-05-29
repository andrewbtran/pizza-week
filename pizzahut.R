#oh god, this will never work...

library(httpRequest)
library(httr)
h <- "order.pizzahut.com"
p <- "/site/ajax/find_nearby"
d2s <- "occasion=C&near=06511&dine_in=false&store_limit=10&locator=true"

d2s <- list("occasion"="C",
            "near"=06511,
            "dine_in"="false",
            "store_limit"=10,
            "locator"="true")

r <- "order.pizzahut.com/site/locator"

c <- "www-origin=yeti-CT-HAMDEN-533; www-origin-reset=1; failover_checked=1; PHPpoolSSL=!m3QORwAqnPB+uOfWWPR8rI/3M2NcIYBcTeKrhjJBrTCPIC+LiBYo5rjrpbVRYzr6CTpGh+AQMDhBtLs=; TS011d6839=01166f2bd0ddc48d21b484137c5aa5a8c25b60571c03330cfc3f6a02400259b769bb2821052a31a36f75514124b56ebc32ab10c1a9; QOSESSID=3de61tv0k12p6dspgolrncbl21; exp_last_visit=1117484979; optimizelyEndUserId=oeu1432844980329r0.697806169046089; lothrottle=0; gtm_session=1; exp_last_activity=1432845670; exp_tracker=a%3A5%3A%7Bi%3A0%3Bs%3A12%3A%22site%2Flocator%22%3Bi%3A1%3Bs%3A21%3A%22site%2Fajax%2Ffind_nearby%22%3Bi%3A2%3Bs%3A12%3A%22site%2Flocator%22%3Bi%3A3%3Bs%3A30%3A%22site%2Fajax%2Forder%2FgetVersionInfo%22%3Bi%3A4%3Bs%3A4%3A%22home%22%3B%7D; TS01bded03=01166f2bd06acad6449290cc51dfdfee65c3374d68138a77adac657b6d2c92a7bbf1dad7f0bcb6e7553fcebb08aff3616811a2986c4b43115d4cfab10ae666e7c10f98e9acf6d22679fce13b501e79e6aa7b59c574; TS0118ed69=01166f2bd0b0bef9aaa26fc43fb572a8ab6a1af99423aefcad957f8924635a19ef831d7cdf831e252e8045988605ffdd8a3863589e25426dda84830b36cf922d27b6c1b422c8ce423de383b6eb1a55e4895431af4a1ef8f4ba9ace3b3a8b56c92e924c0085; optimizelySegments=%7B%22209642986%22%3A%22direct%22%2C%22209669694%22%3A%22gc%22%2C%22209692476%22%3A%22false%22%2C%22209740042%22%3A%22none%22%2C%22307825635%22%3A%22true%22%7D; optimizelyBuckets=%7B%221363470498%22%3A%221363460502%22%7D; __utmt=1; __utma=43646116.1598043183.1432844981.1432844981.1432844981.1; __utmb=43646116.25.9.1432845671285; __utmc=43646116; __utmz=43646116.1432844981.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); optimizelyPendingLogEvents=%5B%5D"

simplePostToHost(h,p,d2s,r,port=80)

getToHost2(h,p,r,port=80)

getToHost("www.molgen.mpg.de", "/~wolski/test.php4?test=test1&test2=test2&test3=3","www.test.pl")

postToHost(h,p,d2s,r, cookie=c)

r <- POST("https://order.pizzahut.com/site/ajax/find_nearby", 
          body="occasion=C&near=06511&dine_in=false&store_limit=10&locator=true")

r <- POST("http://www.datasciencetoolkit.org/text2people", 
          body = "Tim O'Reilly, Archbishop Huxley")
stop_for_status(r)
content(r, "parsed", "application/json")
