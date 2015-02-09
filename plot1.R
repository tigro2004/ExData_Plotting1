########################
## Plot 1  
file<-"plot1.png"
# next line is not required when this files is called by main.R
# source("load_data.R") # uncomment this if you are testing this file separetely

# for english weekday names
orig.locale<- Sys.getlocale("LC_TIME") # save locale settings
Sys.setlocale("LC_TIME","C") 

# setup png device
png(filename = file,width=480,height=480,bg="transparent")

with(power_consum,hist(Global_active_power,main="Global Active Power",
                       col="red",xlab="Global Active Power (killowatts)"))

dev.off()

Sys.setlocale("LC_TIME",orig.locale) # restore original locale seting

