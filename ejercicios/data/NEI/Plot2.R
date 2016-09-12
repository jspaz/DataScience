# Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
# (fips == "24510") from 1999 to 2008? Use the base plotting system to make a 
# plot answering this question.
totalemission=matrix(nrow=4,ncol=2)
totalemission[,1]=levels(as.factor(NEI$year))
for (i in seq_along(levels(as.factor(NEI$year)))){
    totalemission[i,2]=sum(NEI[which(NEI$year==levels(as.factor(NEI$year))[i] & NEI$fips=="24510"),4])
}
totalemission<- data.frame(totalemission,stringsAsFactors = F)
names(totalemission)<- c("year","emission")
totalemission$emission<- as.numeric(totalemission$emission)
with(totalemission,plot(year,emission,type="l"))
# Answer: The total emission from PM25 in Baltimore has incresed in 2005 and decreased in 2008
# Create the PNG file
par(mar=c(5.1,4.1,5.1,2.1))
dev.copy(png, file="Plot2.png", width=720, height=480)
dev.off()