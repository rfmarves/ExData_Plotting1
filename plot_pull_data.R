# pulls the data to be used for graphing

# Reads only the relevant data
file_name <- "household_power_consumption.txt"
start_line <- 66638
end_line <- 69517

# reads start of data file to extract names
header <- read.csv(file_name, header = TRUE, na.strings = "?", nrows = 5, sep = ";")

# reads relevant data lines
df <- read.csv(file_name, header = FALSE, na.strings = "?", skip = start_line - 1 , nrows = (end_line - start_line)+1, sep = ";")

# renames data columns
names(df) <- names(header)

# clears out unused variables
rm("header", "end_line", "file_name", "start_line")

#converts date and time to proper field types
df$datetime <- with(df, as.POSIXct(paste(as.character(Date), as.character(Time)), format = "%d/%m/%Y %H:%M:%S"))
df$Time <- strptime(df$Time, format = "%H:%M:%S")
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")