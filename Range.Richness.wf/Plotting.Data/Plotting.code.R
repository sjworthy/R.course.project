#plot number of species in each range size for Barone's data
plot(table(barone.ranges$range), ylab="Number of Species", xlab="Range Size (m)", type="h")

#plot barones ranges as number of species per quantiles
plot(barone.ranges$Quantile, ylab="Number of Species", xlab="Quintiles", main="Number of Species per Quintile")

#plot total species in transect, las=2 rotates names along x-axis to vertical
plot(table(Sonadora$stemSpeciesCode), ylab="Number of Individuals", xlab="Species Codes", cex.axis=0.4, las=2, main="Number of Individuals per Species")

#Determine the percentage of each Quantile in the transect
(table(Sonadora$Quantile)/9029)*100

#3D pie chart with % of individuals from the transect that are in each quantile
pie3D((table(Sonadora$Quantile)/9029)*100, 
main="Percentage of individuals in each quantile in the transect", 
labels=c("Q1 (8.85%)", "Q2 (20.66%)", "Q3 (23.00%)", "Q4 (7.72%)", "Q5 (23.17%)"), 
labelcex=0.6)

#To plot each quantile in the community data matrix
plot(rownames(cdm), cdm[,1], type="l", xlab="Elevation", ylab="Quartile 1")

#plot of species richness by elevation
plot(rownames(cdm), rowSums(cdm), ylab="Species Richness", xlab="Elevation (m)", type="l", xaxt="n")
axis(1, rownames(cdm))

#plot narrow ranging species
plot(rownames(narrow), narrow[,1], xlab="Elevation (m)", ylab="Species Richness", main="Narrow Ranging Species (range <=300 m)", type="l", xaxt="n")
axis(1, rownames(narrow))

#plot wide ranging species
plot(rownames(wide), wide[,1], xlab="Elevation (m)", ylab="Species Richness", main="Wide Ranging Species (range >300 m)", type="l", xaxt="n")
axis(1, rownames(wide))
