# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# Compare emissions from motor vehicle sources in Baltimore City with emissions
# from motor vehicle sources in Los Angeles County, California (fips == "06037"). 
# Which city has seen greater changes over time in motor vehicle emissions?
NEI_motorvehicle<- NEI[which(NEI$SCC %in% SCC[grep("motor",SCC$SCC.Level.Three,ignore.case = TRUE),"SCC"]),]
tco <- c("24510","06037")
NEI_motorvehicle_both<-subset(NEI_motorvehicle,fips %in% tco)
g<-ggplot(NEI_motorvehicle_both,aes(year,Emissions,color=fips))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions from motor vehicle for Los Angeles and Baltimore City",x="Year (1999 - 2008)")+scale_colour_discrete(name = "City", label = c("Los Angeles","Baltimore"))
# L.A. has higher PM25 than Baltimore
# create PNG file
ggsave(file="Plot6.png")
