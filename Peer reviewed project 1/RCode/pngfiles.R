#Code to generate the png files using the code form plot1.R, plot2.R, plot3.R and plot4.R

png("./pngFiles/plot1.png")
source("./RCode/plot1.R")
dev.off()

png("./pngFiles/plot2.png")
source("./RCode/plot2.R")
dev.off()

png("./pngFiles/plot3.png")
source("./RCode/plot3.R")
dev.off()

png("./pngFiles/plot4.png")
source("./RCode/plot4.R")
dev.off()