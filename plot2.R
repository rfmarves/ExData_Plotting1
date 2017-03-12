# Creates the Global Active Power line graph
# Global Active Power (kW) vs time
# graph is 480 x 480 pixels, png file

source("plot_pull_data.R")

# Creates the histogram
f_name = "plot2.png"
y_label = "Global Active Power (kilowatts)"
x_label = ""

png(filename = f_name, width = 480, height = 480)
plot(df$datetime, df$Global_active_power, type = "l", ylab = y_label, xlab = x_label)
dev.off()

# cleans added variables
rm("f_name", "y_label", "x_label")
