# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# How have emissions from motor vehicle sources changed from 1999 to 2008 in Baltimore City?
NEI_motorvehicle<- NEI[which(NEI$SCC %in% SCC[grep("motor",SCC$SCC.Level.Three,ignore.case = TRUE),"SCC"] & NEI$fips=="24510"),]
g<-ggplot(NEI_motorvehicle,aes(year,Emissions))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions from motor vehicle for Baltimore City",x="Year (1999 - 2008)")
# Answer: L.A. has decrease emissions from 2005 to 2008
# Create the PNG file
ggsave(file="Plot5.png")