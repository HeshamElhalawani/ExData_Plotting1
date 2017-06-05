QuizFile <- "./household_power_consumption.txt"
Data <- read.table(QuizFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data$Date <- as.Date(Data$Date, format="%d/%m/%Y")
data <- subset(Data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
