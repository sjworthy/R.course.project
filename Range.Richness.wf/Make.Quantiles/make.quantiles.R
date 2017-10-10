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

