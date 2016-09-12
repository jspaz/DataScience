# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# Of the four types of sources indicated by the type (point, nonpoint, onroad, 
# nonroad) variable, which of these four sources have seen decreases in emissions 
# from 1999-2008 for Baltimore City? Which have seen increases in emissions from
# 1999-2008? Use the ggplot2 plotting system to make a plot answer this question.
library(ggplot2)
sub_emissions<- subset(NEI,fips="24510")
g<-ggplot(sub_emissions,aes(year,Emissions,color=type))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions for Baltimore City ",x="Year (1999 - 2008)")
# Answer: In Baltimore, the NONPOINt has the most decreased
# Create the PNG file
ggsave(file="Plot3.png")