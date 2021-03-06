data <- read.csv("household_power_consumption.txt", sep=";")
crp <- subset(data, (strptime(Date,format="%d/%m/%Y") == "2007-02-01 PST" | strptime(Date,format="%d/%m/%Y") == "2007-02-02 PST"))
hist(as.numeric(crp$Global_active_power),main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.copy(png,file="plot1.png")
dev.off()