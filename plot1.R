
library("lattice")
library("graphics")
alldata <- read.csv('household_power_consumption.txt',header=TRUE,sep=';')
df <- subset(alldata, Date == '1/2/2007' | Date == '2/2/2007')
png("plot1.png", width=480, height=480, units="px")
hist(as.numeric(as.character(df$Global_active_power)),xlab = 'Global Active Power (kilowatts)',main = 'Global Active Power',col ='red')
dev.off()
