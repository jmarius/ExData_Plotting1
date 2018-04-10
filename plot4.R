# load data
source("Loading_Data.R")

# Store data in object
data <- load_data()

# Plot 4 

# set the graphical parameters to display 4 graphs in one view
par(mfrow = c(2,2))

plot(data$Date_Time, data$Global_active_power, 
     type = "l",
     lty = 1,
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
plot(data$Date_Time, data$Voltage,
     type = "l",
     lty = 1,
     xlab = "datetime",
     ylab = "Voltage")
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
       col = c("black", "red", "blue"), lty = 1, box.lty = 0)
plot(data$Date_Time, data$Global_reactive_power,
     type = "l",
     lty = 1,
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.copy(device = png, file = "plot4.png", width = 480, height = 480)
dev.off()