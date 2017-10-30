#Put species into quantiles based on range size
#Adjust size of quantiles so there are an even number of species in each
#Use quantile function on the range column of the data
#Divide the data from 0 to 1 by .2 or 20% in this case

quantile(barone.ranges$range, seq(0, 1, by=.2))


#Determine the number of species in each quantile
#use the sum function to total the number of species between the range given

sum(barone.ranges$range<=500)
sum(barone.ranges$range>500 & barone.ranges$range<=734)
sum(barone.ranges$range>734 & barone.ranges$range<=848)
sum(barone.ranges$range>848 & barone.ranges$range<=950)
sum(barone.ranges$range>950)

#Assign species to quantiles in the .csv file
#create a new blank column called Quantile

barone.ranges$Quantile=NA

#If the value in column range of barone.ranges meets the criteria stated,
place the quantile name in column Quantile

barone.ranges$Quantile[barone.ranges$range<=500]="Q1"
barone.ranges$Quantile[barone.ranges$range>500 & barone.ranges$range<=750]="Q2"
barone.ranges$Quantile[barone.ranges$range>750 & barone.ranges$range<=850]="Q3"
barone.ranges$Quantile[barone.ranges$range>850 & barone.ranges$range<=950]="Q4"
barone.ranges$Quantile[barone.ranges$range>950]="Q5"

#Assign species to quantile for .csv file that includes abundance
#Create a new blank column called Quantile

Sonadora$Quantile=NA
#Get a list of the species that are in Q1-Q5
Q1=as.character(barone.ranges$SpeciesCode[barone.ranges$range<=500])
Q2=as.character(barone.ranges$SpeciesCode[barone.ranges$range>500 & barone.ranges$range<=750])
Q3=as.character(barone.ranges$SpeciesCode[barone.ranges$range>750 & barone.ranges$range<=850])
Q4=as.character(barone.ranges$SpeciesCode[barone.ranges$range>850 & barone.ranges$range<=950])
Q5=as.character(barone.ranges$SpeciesCode[barone.ranges$range>950])

#Add Q1-Q5 for each of these species to the Quantile column

Sonadora$Quantile[Sonadora$stemSpeciesCode %in% Q1]="Q1"
Sonadora$Quantile[Sonadora$stemSpeciesCode %in% Q2]="Q2"
Sonadora$Quantile[Sonadora$stemSpeciesCode %in% Q3]="Q3"
Sonadora$Quantile[Sonadora$stemSpeciesCode %in% Q4]="Q4"
Sonadora$Quantile[Sonadora$stemSpeciesCode %in% Q5]="Q5"

