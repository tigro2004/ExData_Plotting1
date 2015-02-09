########################
## Plot 3  
file<-"plot3.png"
# next line is not required when this files is called by main.R
# source("load_data.R") # uncomment this if you are testing this file separetely

# for english weekday names
orig.locale<- Sys.getlocale("LC_TIME") # save locale settings
Sys.setlocale("LC_TIME","C") 

# setup png device
png(filename = file,width=480,height=480,bg="transparent")
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
legend("topright",lty = "solid",col=p3colors,legend = paste("Sub_metering",c(1:3),sep="_"))

# close plotting device (png-file)
dev.off()

Sys.setlocale("LC_TIME",orig.locale) # restore original locale seting

