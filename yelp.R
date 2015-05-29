require(httr)
require(httpuv)
require(jsonlite)
require(plyr)
consumer_key <- "Rk9DoGftOqkTPCKxlSan4A"
consumer_secret <- "acBXBGXMStPHqvfgmMBVOB8wQiY"
token <- "gQZRUayuC36oStP6AbM48vUevCqpxIqk"
token_secret <- "COyxmLN9al-rp6puOaz4pPjkAzM"

myapp <- oauth_app("YELP", key=consumer_key, secret=consumer_secret)
sig <- sign_oauth1.0(myapp, token=token, token_secret=token_secret)

limit <-10

#Loop structure:
#  Loop per city in the cities list
#  Grab the total locations in that city
#     Loop in iterations of 20 until it hits the total location number
targets <- 201401:201406
targets <- paste("http://stats.grok.se/json/en/",
                 201401:201406,"/web_scraping",sep="")
cities <- list("New%0Haven%2cCT","Hartford%2cCT","Stamford%2cCT")
url <- paste0("http://api.yelp.com/v2/search/?location=New%0Haven%2cCT&category_filter=pizza")

yelpurls <- paste("http://api.yelp.com/v2/search/?location=", cities, "&category_filter=pizza", sep="")

getData <- function(yelpurl) {
  locationdata=GET(yelpurl, sig)
  locationdataContent = content(locationdata)
  total <- locationdataContent$total
  locationdataList=jsonlite::fromJSON(toJSON(locationdataContent))
  results <- data.frame(locationdataList)
  return(results)
}

resultstotal <- ldply(yelpurls,getData)

#test
locationdata=GET("http://api.yelp.com/v2/search/?location=Stamford%2cCT&category_filter=pizza", sig)
locationdataContent = content(locationdata)
total <- locationdataContent$total
jsonlite::fromJSON(toJSON(locationdataContent))
