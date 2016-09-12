# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# Across the United States, how have emissions from coal combustion-related
# sources changed from 1999-2008?
NEI_coal<- NEI[which(NEI$SCC %in% SCC[grep("coal",SCC$Short.Name,ignore.case = TRUE),"SCC"]),]
g<-ggplot(NEI_coal,aes(year,Emissions))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions from coal combustion-related sources",x="Year (1999 - 2008)")
# Answer: The emission from coal combustion-related in U.S.A. has decreased dince 1999 to 2008
# Create the PNG file
ggsave(file="Plot4.png")