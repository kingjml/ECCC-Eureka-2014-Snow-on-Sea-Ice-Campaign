##########################################################
# Example HDF5 Reader in R
# J. King joshua.king [at] canada.ca
# 09/11/16
##########################################################

#Check for the rhdf5 package, install if its missing
if("rhdf5" %in% rownames(installed.packages()) == FALSE) {
  source("http://bioconductor.org/biocLite.R")
  biocLite("rhdf5")
}
require(rhdf5) 

h5directory <-'/path/to/your/directory' #Set this to the location of the HDF5
h5FileName <- 'ECCCEureka2014.h5'

#Example of data handing
print(h5ls(h5FileName)) #list stucture, if this fails your path is likely wrong
iceData <- h5read(h5FileName, "/eureka_data/auger") #read ice thickness
par(mfrow=c(2,1))
plot(iceData$latitude,iceData$ice_thickness,xlab="Latitude (deg)", ylab = "Ice Thickness (m)")
plot(iceData$snow_depth,iceData$ice_thickness, xlab="Snow depth (m)", ylab = "Ice Thickness (m)")