# load data
source("Loading_Data.R")

# store data in object
data <- load_data()

# Plot 2

plot(data$Date_Time, data$Global_active_power, 
     type = "l",
     lty = 1,
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.copy(device = png, file = "plot2.png", width = 480, height = 480)
dev.off()