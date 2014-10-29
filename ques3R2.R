library(ggplot2)
data <-RCurl::getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")

extradf <- read.table(textConnection(data),sep=",",header=T)

p1 <- ggplot(extradf, aes(x=Steps, y=Miles)) + geom_point(shape=1)

p2 <- ggplot(extradf, aes(x=Miles, y=Steps)) + geom_point(shape=1)
