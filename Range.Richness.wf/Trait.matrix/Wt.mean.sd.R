#Determine mean trait values for each plot using abundance weighted cdm
#function that calculates mean for the first column in the trait matrix
for species that are present in the plot

weighted.mean.function=function(x){
weighted.mean(tdm[names(x[x >0]), 1], x[x>0])
}
apply(cdm.ra, MARGIN=1, weighted.mean.function)

#Determine standard deviation of trait values for each plot
#function that calculates standard deviation for the first column in the trait matrix
for species that are present in the plot

library(SDMTools)
weighted.sd.function=function(x){
wt.sd(traits[names(x[x>0]),1], x[x>0])
}
apply(cdm.ra, MARGIN=1, wt.sd.function)
