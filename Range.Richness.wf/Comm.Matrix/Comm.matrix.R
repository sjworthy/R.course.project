#Make a community data matrix with number of species in each plot
that are in each quantile
#Make a blank community data matrix
#5 columns, one for each quantile
#16 rows, one for each plot in the transect (250m-1000m)

cdm=matrix(data=NA, ncol=5, nrow=16)

#Add column names

colnames(cdm)=c("Q1", "Q2", "Q3", "Q4", "Q5")

#Add row names

rownames(cdm)=c(250, 300, 350, 400, 450, 500, 550, 600, 650, 700,750, 800, 850, 900, 950, 1000)

#Make a list containing the elevation of each plot

listy=c(250, 300, 350, 400, 450, 500, 550, 600, 650, 700,750, 800, 850, 900, 950, 1000)

#Fill in the community data matrix
#A for loop for that loops through for each element in listy, so each elevation
#Subset the abundance data set by the plot elevation
#Take that subsetted object and subset it again while removing duplicated names
#Take that object and use the table function to summarize the number
of species in each quantile based on the Quantile column
#Place those values into row i

for(i in 1:length(listy)){
elevation=subset(Sonadora, Sonadora$plotElevation==listy[i])
sp.name=subset(elevation, !duplicated(elevation$stemSpeciesCode))
cdm[i,]=table(sp.name$Quantile)
}



