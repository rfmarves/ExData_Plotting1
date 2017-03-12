# Creates the Submetering graph
# submetering over time
# graph is 480 x 480 pixels, png file

source("plot_pull_data.R")

# Creates the histogram
f_name = "plot3.png"
y_label = "Energy sub metering"
x_label = ""

png(filename = f_name, width = 480, height = 480)
plot(df$datetime, df$Sub_metering_1, type = "l", ylab = y_label, xlab = x_label)
points(df$datetime, df$Sub_metering_2, type = "l", col = "red")
points(df$datetime, df$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))
dev.off()

# cleans added variables
rm("f_name", "y_label", "x_label")
