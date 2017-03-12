# Creates the Global Active Power histogram
# Global Active Power (kW) vs Frequency
# graph is 480 x 480 pixels, png file

source("plot_pull_data.R")

# Creates the histogram
f_name = "plot1.png"
gcolor = "red"
graph_title = "Global Active Power"
x_label = "Global Active Power (kilowatts)"

png(filename = f_name, width = 480, height = 480)
hist(df$Global_active_power, main = graph_title, col = gcolor , xlab = x_label)
dev.off()

# cleans added variables
rm("f_name", "x_label", "gcolor", "graph_title")
