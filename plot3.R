# load data
source("Loading_Data.R")

# Store data in an object
data <- load_data()

# Plot 3

plot(data$Date_Time, data$Sub_metering_1,
     type = "l",
     lty = 1,
     col = "black",
     xlab = "",
     ylab = "Energy sub metering")
lines(data$Date_Time, data$Sub_metering_2,
     type = "l",
     lty = 1,
     col = "red")
lines(data$Date_Time, data$Sub_metering_3,
     type = "l",
     lty = 1,
     col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

dev.copy(device = png, file = "plot3.png", width = 480, height = 480)
dev.off()