# load data
source("Loading_Data.R")

# store data in object
data <- load_data()

# Plot Histogram of Global Active Power

hist(data$Global_active_power, col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

dev.copy(device = png, file = "plot1.png", width = 480, height = 480) # copy plot to graphic device
dev.off() # Close device