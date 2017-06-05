QuizFile <- "./household_power_consumption.txt"
Data <- read.table(QuizFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data$Date <- as.Date(Data$Date, format="%d/%m/%Y")
data <- subset(Data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
Global_active_power <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
