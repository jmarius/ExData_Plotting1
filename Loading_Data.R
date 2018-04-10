# Read in data

load_data <- function() {
        house <- read.table(file = 'household_power_consumption.txt', 
                        header = TRUE, 
                        sep = ';',
                        colClasses = c('character', 'character', rep('numeric', 7)),
                        na.strings = "?")
        
        # Convert date and time variables to Date/Time class
        house$Date_Time <- strptime(paste(house$Date, house$Time), "%d/%m/%Y %H:%M:%S") # must concatenate before changing date class
        house$Date <- as.Date(house$Date, "%d/%m/%Y")
        
        # Filter the data between 2007-02-01 to 2007-02-02
        house_subset <- house[which(house$Date >= "2007-02-01" & house$Date <= "2007-02-02"),]
        
        return(house_subset)
}


