# Creates the 4 mini graphs
# graph is 480 x 480 pixels, png file

source("plot_pull_data.R")

# Creates the histogram
f_name = "plot4.png"

png(filename = f_name, width = 480, height = 480)

# 4 mini graphs setup
par(mfrow=c(2,2))

# Graph 1
plot(df$datetime, df$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

# Graph 2
plot(df$datetime, df$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# Graph 3
plot(df$datetime, df$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
points(df$datetime, df$Sub_metering_2, type = "l", col = "red")
points(df$datetime, df$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"), bty = "n")

# Graph 4
with(df, plot(datetime, Global_reactive_power, type = "l"))

dev.off()

# cleans added variables
rm("f_name")
