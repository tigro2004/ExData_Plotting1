## Load dataframe 
# install.packages("data.table")
# require(data.table)
power_consum <- read.csv(datafile_csv,sep=";",header=TRUE,
                      na.strings=c("?"),stringsAsFactors = FALSE)
power_consum <- subset(power_consum,Date %in% c("1/2/2007","2/2/2007"))
power_consum <- transform(power_consum,DateTime=as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

