
##For the first few plots, use the mpg dataset

library(ggplot2)

library(ggthemes)  

library(imager)

head(mpg) # It contains only models which had a new release every year between 1999 and 2008 - this was used as a proxy for the popularity of the car.


## Histogram of hwy mpg values:

ggplot(mpg, aes(hwy)) + geom_histogram(bins=20,fill="red", alpha=0.5)


## Barplot of car counts per manufacturer with color fill defined by cyl count:

ggplot(mpg, aes(manufacturer)) + geom_bar(aes(fill=factor(cyl)))


## Switch now to use the txhousing dataset that comes with ggplot2

head(txhousing) ##Information about the housing market in Texas provided by the TAMU real estate center, http://recenter.tamu.edu/.


## Create a scatterplot of volume versus sales. Afterwards play around with alpha and color arguments to clarify information.

pl <- ggplot(txhousing,aes(x=sales, y=volume)) + geom_point(alpha=0.4, col="red")
pl


## Add a smooth fit line to the scatterplot from above. Hint: You may need to look up geom_smooth()

pl + geom_smooth( col="cyan")


#Great Job!
# Up next you'll have a data visualization project in which you will build up a real data visualization used in The Economist.## Good Job ##


