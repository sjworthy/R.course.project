#Determine the community weighted mean
#Mean trait value weighted by the relative abundance of each species
#MARGIN=1 means we want the method applied to each row
install.packages("vegan")
library(vegan)
cdm.ra=decostand(cdm, method="total", MARGIN=1)

