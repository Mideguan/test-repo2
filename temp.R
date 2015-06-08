# Exploratory Data Analysis
# Course project 1 of 2
# plot1of4
# "plot1.R" to generate "plot1.png"
# Funnies: "Who moved my cheese -- LOL"

# Section 1: Code for reading the data to ensure reproducibility
        fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileUrl, destfile = "./data/cameras.csv", method = "curl")
        list.files("./data")

        unzip('exdata-data-NEI_data.zip')
}

        dataRaw <- read.csv(
                "data/household_power_consumption.txt", sep=";", dec=".", na.strings = "?",
                colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
                )

        data <- dataRaw[(dataRaw$Date == "1/2/2007" | dataRaw$Date == "2/2/2007"), ]
        
# Section 2: Create the PNG file
        png(filename = "plot1.png", width = 480, height = 480)
        
        hist(data$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
        
        dev.off()
        
        