########################
## Plot 2  
file<-"plot2.png"
# next line is not required when this files is called by main.R
# source("load_data.R") # uncomment this if you are testing this file separetely

# for english weekday names
orig.locale<- Sys.getlocale("LC_TIME") # save locale settings
Sys.setlocale("LC_TIME","C") 

# setup png device
png(filename = file,width=480,height=480,bg="transparent")
# draw empty canvas (type="n") using data  for calculations
par(mfcol=c(1,1))
with(power_consum,
     plot(DateTime,Global_active_power,type="n", xlab="",
          ylab= "Global Active Power (killowatts)"))
# draw data plot on canvas
with(power_consum,
     lines(DateTime,Global_active_power))
# close plotting device (png-file)
dev.off()

Sys.setlocale("LC_TIME",orig.locale) # restore original locale seting

