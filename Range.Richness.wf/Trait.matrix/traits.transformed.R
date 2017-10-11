#transform trait data to approximate a normal distribution
#scale the data to approximately a mean of 0 and unit variance

traits.scaled=apply(log(traits), MARGIN=2, scale)
