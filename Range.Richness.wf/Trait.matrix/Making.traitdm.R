#Construct trait data matrix
#number of rows is equal to number of species
#number of columns is equal to number of traits
tdm=matrix(data=NA, nrow=111, ncol=6)

#Add column names
colnames(tdm)=c("height.ft", "la", "sla", "wood", "n", "p" )

#Add row names
rownames(tdm)=barone.ranges$SpeciesCode

#Cells will contain trait values for species

tdm[,1]=barone.ranges$height_ft
tdm[,2]=barone.ranges$la
tdm[,3]=barone.ranges$sla
tdm[,4]=barone.ranges$wood
tdm[,5]=barone.ranges$n
tdm[,6]=barone.ranges$p

#Make trait data matrix for each quantile

Q1=as.character(barone.ranges$SpeciesCode[barone.ranges$range<=500])
Q2=as.character(barone.ranges$SpeciesCode[barone.ranges$range>500 & barone.ranges$range<=750])
Q3=as.character(barone.ranges$SpeciesCode[barone.ranges$range>750 & barone.ranges$range<=850])
Q4=as.character(barone.ranges$SpeciesCode[barone.ranges$range>850 & barone.ranges$range<=950])
Q5=as.character(barone.ranges$SpeciesCode[barone.ranges$range>950])

Q1.traits=all.traits[Q1,]
Q2.traits=all.traits[Q2,]
Q3.traits=all.traits[Q3,]
Q4.traits=all.traits[Q4,]
Q5.traits=all.traits[Q5,]

#Determine mean trait values for each plot
#function that calculates mean for the first column in the trait matrix
for species that are present in the plot

mean.function=function(x){
mean(tdm[names(x[x >0]), 1], na.rm=T)
}
apply(cdm, MARGIN=1, mean.function)

#Determine standard deviation of trait values for each plot
#function that calculates standard deviation for the first column in the trait matrix
for species that are present in the plot

sd.function=function(x){
sd(traits[names(x[x>0]),1], na.rm=T)
}
apply(cdm, MARGIN=1, sd.function)

#Determine skewness of trait values for each plot
#function that calculates skewness for the first column in the trait matrix
for species that are present in the plot

skew.function=function(x){
skewness(tdm[names(x[x>0]),1], method="moment", na.rm=T)
}
apply(cdm, MARGIN=1, skew.function)

#Determine kurtosis of trait values for each plot
#function that calculates kurtosis for the first column in the trait matrix
for species that are present in the plot

kurtosis.function=function(x){
kurtosis(tdm[names(x[x>0]),1], method="moment", na.rm=T)
}
apply(cdm, MARGIN=1, kurtosis.function)