## Download and unzip datafile
datafile_url<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
datafile_name<-"household_power_consumption"
data_dir="./data"
datafile_path<-paste(data_dir,datafile_name,sep="/")
datafile_csv<-paste(datafile_path,".txt",sep="")
datafile_zip<-paste(datafile_path,".zip",sep="")

if(!file.exists("./data")) {
  dir.create("./data")
}
if(!file.exists(datafile_zip)) {
  download.file(url = datafile_url,destfile = datafile_zip, method = "curl")
}
if(!file.exists(datafile_csv)) {
  unzip(zipfile = datafile_zip,exdir = data_dir )
}

