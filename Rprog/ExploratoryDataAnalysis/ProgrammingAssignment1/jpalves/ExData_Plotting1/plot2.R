leDados <- function(file){
  dados          <- read.table(file,header=TRUE,sep=";",na.strings = "?",stringsAsFactors=FALSE)
  dados$dateTime <- strptime(paste(dados[,1], dados[,2]), "%d/%m/%Y %H:%M:%S")
  dados$Date     <- as.Date(dados$Date, format = "%d/%m/%Y")
  dados          <- dados[dados$Date >= as.Date("2007-02-01") & dados$Date <= as.Date("2007-02-02"),]
  
  return(dados)
}

if(!file.exists("household_power_consumption.zip"))
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', destfile="household_power_consumption.zip", method="curl")
dados <- leDados(unz("household_power_consumption.zip", "household_power_consumption.txt"))

#my locale is Portuguese ex: sexta-feira -> sex -> friday
Sys.setlocale("LC_TIME", "en_US.UTF-8") #for linux

png(file = "plot2.png", width = 480, height = 480, units = "px")
plot(dados$dateTime, dados$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()