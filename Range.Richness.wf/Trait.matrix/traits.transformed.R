#transform trait data to approximate a normal distribution
#scale the data to approximately a mean of 0 and unit variance

tdm.scaled=apply(log(tdm), MARGIN=2, scale)
row.names(tdm.scaled)=row.names(tdm)
colnames(tdm.scaled)=c("log.height.ft", "log.la", "log.sla", "log.wood", "log.n", "log.p")
