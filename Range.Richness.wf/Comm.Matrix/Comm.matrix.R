#Make a community data matrix with number of species in each plot
#Make a blank community data matrix
#111 columns, one for each species
#16 rows, one for each plot in the transect (250m-1000m)

cdm=matrix(data=NA, ncol=111, nrow=16)

#Add column names

colnames(cdm)=barone.ranges$SpeciesCode

#Add row names

rownames(cdm)=c(250, 300, 350, 400, 450, 500, 550, 600, 650, 700,750, 800, 850, 900, 950, 1000)

#Make a list containing the elevation of each plot

listy=c(250, 300, 350, 400, 450, 500, 550, 600, 650, 700,750, 800, 850, 900, 950, 1000)

#Fill in the community data matrix
#A for loop that loops through for each element in listy, so each elevation
#Subset the abundance data set by the plot elevation
#Take that subsetted object and table the SpeciesCode column
#Take that object and place those values into row i

for(i in 1:length(listy)){
elevation=subset(sonadora, sonadora$plotElevation==listy[i])
output=table(elevation$stemSpeciesCode)
cdm[i,]=output
}

#To get a presence/absence community data matrix

pa.cdm=decostand(cdm, method="pa")

#to get narrow ranging species into a community data matrix
#to be a narrow ranging species, range must be < mean
narrow=matrix(data=NA, nrow=16, ncol=1)
colnames(narrow)="Richness"
rownames(narrow)=c(250, 300, 350, 400, 450, 500, 550, 600, 650, 700,750, 800, 850, 900, 950, 1000)

listy=c(250, 300, 350, 400, 450, 500, 550, 600, 650, 700,750, 800, 850, 900, 950, 1000)

for(i in 1:length(listy)){
elevation=subset(Sonadora, Sonadora$plotElevation==listy[i])
sp.name=subset(elevation, !duplicated(elevation$stemSpeciesCode))
narrow[i,]=sum(sp.name$Range <=300)
}

#to get wide ranging species into a community data matrix
#to be a wide ranging species, range must be > mean
wide=matrix(data=NA, nrow=16, ncol=1)
colnames(wide)="Richness"
rownames(wide)=c(250, 300, 350, 400, 450, 500, 550, 600, 650, 700,750, 800, 850, 900, 950, 1000)

for(i in 1:length(listy)){
elevation=subset(Son, Son$plotElevation==listy[i])
sp.name=subset(elevation, !duplicated(elevation$stemSpeciesCode))
wide[i,]=sum(sp.name$Range >300)
}


