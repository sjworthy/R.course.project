#Construct trait data matrix
#number of rows is equal to number of quantiles
#number of columns is equal to number of traits
tdm=matrix(data=NA, nrow=5, ncol=5)

#Add column names
colnames(tdm)=c("trait2, "trait2"...)

#Add row names
rownames(tdm)=c("Q1", "Q2"...)

#Cells will contain trait values for species within each quantile

#Make a list of the species codes within the quantile

listy=c("sp1", "sp2,...)

#subset the trait.csv for the rows of only the species in listy
Q1=traits[listy,]

#Determine the mean of the trait values for only those species 
output=colMeans(Q1)

#Put the output of the trait means into the rows of the trait data matrix
tdm[1,]=output




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