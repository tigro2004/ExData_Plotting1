########################
## Plot 4  
file<-"plot4.png"
# next line is not required when this files is called by main.R
# source("load_data.R") # uncomment this if you are testing this file separetely

# for english weekday names
orig.locale<- Sys.getlocale("LC_TIME") # save locale settings
Sys.setlocale("LC_TIME","C") 

# setup png device
png(filename = file,width=480,height=480,bg="transparent")
#setup matrix of plots
par(mfcol=c(2,2))


# Plot 4 cell 1 1
# draw empty canvas (type="n") using data  for calculations

with(power_consum,
     plot(DateTime,Global_active_power,type="n", xlab="",
          ylab= "Global Active Power (killowatts)"))

# draw data plot on canvas
with(power_consum,
     lines(DateTime,Global_active_power))


#Plot 4 cell 2 1

# draw empty canvas (type="n") using data  for calculations
with(power_consum,
     plot(DateTime,pmax(Sub_metering_1,Sub_metering_2,Sub_metering_3),type="n", xlab="",
          ylab= "Energy sub metering"))
# draw data plot on canvas
p3colors<- c(1,2,4)
with(power_consum,
     lines(DateTime,Sub_metering_1,col=p3colors[1]))
with(power_consum,
     lines(DateTime,Sub_metering_2,col=p3colors[2]))
with(power_consum,
     lines(DateTime,Sub_metering_3,col=p3colors[3]))
legend("topright",bty="n",col=p3colors,
       legend = paste("Sub_metering",c(1:3),sep="_"),
       le)

# Plot 4 cell 1 2 
# draw empty canvas (type="n") using data  for calculations

with(power_consum,
     plot(DateTime,Voltage,type="n", xlab="datetime"))

# draw data plot on canvas
with(power_consum,
     lines(DateTime,Voltage))


# Plot 4 cell 2 2 
# draw data plot on canvas
with(power_consum,barplot(Global_reactive_power),xlab="datetime",ylab="Global_reactive_power")
# close plotting device (png-file)
dev.off()

Sys.setlocale("LC_TIME",orig.locale) # restore original locale seting

