install.packages("quantmod")
library(quantmod)
getSymbols("HINDUNILVR.NS")
head(HINDUNILVR.NS)

Open<-Op(HINDUNILVR.NS)
High<-Hi(HINDUNILVR.NS)
Low<-Lo(HINDUNILVR.NS)
Close<-Cl(HINDUNILVR.NS)
Volume<-Vo(HINDUNILVR.NS)
AdjClose<-Ad(HINDUNILVR.NS)

getSymbols("HINDUNILVR.NS",from='2000-01-01',to='2023-08-19')

chartSeries(HINDUNILVR.NS,type="line",subset='2023',theme=chartTheme('white'))

chartSeries(HINDUNILVR.NS,type="candlesticks",subset='2023-08',theme=chartTheme('white'))

chartSeries(HINDUNILVR.NS,type="bar",subset='2023-07::2023-08',theme=chartTheme('white'))