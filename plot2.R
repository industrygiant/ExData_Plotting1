
library("lattice")
library("graphics")
alldata <- read.csv('household_power_consumption.txt',header=TRUE,sep=';')
df <- subset(alldata, Date == '1/2/2007' | Date == '2/2/2007')
png("plot2.png", width=480, height=480, units="px")
dateTime <- as.POSIXlt(paste(as.Date(df$Date, format="%d/%m/%Y"), df$Time, sep=" "))
plot(dateTime, as.numeric(as.character(df$Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
