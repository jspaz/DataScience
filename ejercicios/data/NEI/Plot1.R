# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission 
# from all sources for each of the years 1999, 2002, 2005, and 2008.
totalemission=matrix(nrow=4,ncol=2)
totalemission[,1]=levels(as.factor(NEI$year))
for (i in seq_along(levels(as.factor(NEI$year)))){
    totalemission[i,2]=sum(NEI[which(NEI$year==levels(as.factor(NEI$year))[i]),4])
}
totalemission<- data.frame(totalemission,stringsAsFactors = F)
names(totalemission)<- c("year","emission")
totalemission$emission<- as.numeric(totalemission$emission)
with(totalemission,plot(year,emission,type="l"))
# In U.S.A the total PM25 has decreased since 1999 to 2008
# Create the PNG file
par(mar=c(5.1,5.1,4.1,2.1))
dev.copy(png, file="Plot1.png", width=720, height=480)
dev.off()