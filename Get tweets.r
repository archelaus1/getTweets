#Nanda latest twitter API keys Aug 2022

install.packages("twitteR")
install.packages("ROAuth")
install.packages("plyr")
install.packages("stringr")  
install.packages ('base64enc')

library(twitteR)

library(ROAuth)
library( 'base64enc')

        
api_key <-"" #in the quotes, put your API key 
api_secret <- "" #in the quotes, put your API secret token 
token <- "" #in the quotes, put your token 
token_secret <- "" #in the quotes, put your token secret

setup_twitter_oauth(api_key, api_secret, token, token_secret)


tweets <-searchTwitter("queen", n = 1000, lang = "en")
#within quotes enter your keywords

# save results in a data frame

tweets.df <-twListToDF(tweets)
head(tweets)
list(tweets)


write.csv(tweets.df, "/Users/Nanda/R/queen.csv")
           
install.packages("leaflet")
install.packages("maps") 
library(leaflet) 
library(maps)

map <-read.csv("C:/Users/Nanda/Desktop/Programming/R/masterchef.csv", stringsAsFactors = FALSE)

m <- leaflet(map) %>% addTiles()
m %>% addCircles(lng = ~longitude, lat = ~latitude, popup = map$type, weight = 8, radius = 40, color = "#fb3004", stroke = TRUE, fillOpacity = 0.8)

install.packages("tidytext")
library(tidytext)

?tidytext

