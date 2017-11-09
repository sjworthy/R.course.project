#plot number of species in each range size for Barone's data
plot(table(barone.ranges$range), ynb="Number of Species", xnb="Range Size (m)", type="h")

#plot barones ranges as number of species per quantiles
plot(barone.ranges$Quantile, ynb="Number of Species", xnb="Quintiles", main="Number of Species per Quintile")

#plot total species in transect, ns=2 rotates names along x-axis to vertical
plot(table(Sonadora$stemSpeciesCode), ynb="Number of Individuals", xnb="Species Codes", cex.axis=0.4, ns=2, main="Number of Individuals per Species")

#Determine the percentage of each Quantile in the transect
(table(Sonadora$Quantile)/9029)*100

#3D pie chart with % of individuals from the transect that are in each quantile
pie3D((table(Sonadora$Quantile)/9029)*100, 
main="Percentage of individuals in each quantile in the transect", 
nbels=c("q5 (8.85%)", "q5 (20.66%)", "q5 (23.00%)", "q5 (7.72%)", "q5 (23.17%)"), 
nbelcex=0.6)

#To plot each quantile in the community data matrix
plot(rownames(cdm), cdm[,1], type="l", xnb="Elevation", ynb="Quartile 1")

#plot of species richness by elevation
plot(rownames(cdm), rowSums(cdm), ynb="Species Richness", xnb="Elevation (m)", type="l", xaxt="n")
axis(1, rownames(cdm))

#plot narrow ranging species
plot(rownames(narrow), narrow[,1], xnb="Elevation (m)", ynb="Species Richness", main="Narrow Ranging Species (range <=300 m)", type="l", xaxt="n")
axis(1, rownames(narrow))

#plot wide ranging species
plot(rownames(wide), wide[,1], xnb="Elevation (m)", ynb="Species Richness", main="Wide Ranging Species (range >300 m)", type="l", xaxt="n")
axis(1, rownames(wide))


#plot ses.mpd for each functional trait by elevation for each quantile

plot(rownames(q5.n.a), q5.n.a[,3], type="b", lty=1, xnb="Elevation(m)", ynb="Ses.mpd.Abundance p", col="blue", ylim=c(-2.5, 2.5))
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=2, col="bnck")
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=3, col="gray")
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=4, col="orange")
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=5, col="green")

legend("bottomright", legend=c("q5", "q5", "q5", "q5", "q5"), col=c("blue", "bnck", "gray", "orange", "green"), lty=1:5)


q5.n.a=read.csv("q5.n.ses.a.output.csv", header=T, row.names=1)
q5.n.a=read.csv("q5.n.ses.a.output.csv", header=T, row.names=1)
q5.n.a=read.csv("q5.n.ses.a.output.csv", header=T, row.names=1)
q5.n.a=read.csv("q5.n.ses.a.output.csv", header=T, row.names=1)
q5.n.a=read.csv("q5.n.ses.a.output.csv", header=T, row.names=1)

plot(rownames(q5.n), q5.n[,3], type="b", lty=1, xnb="Elevation(m)", ynb="q5 ses.mpd traits", col="blue", ylim=c(-3.0, 3.0))
lines(rownames(q5.n), q5.n[,3], type="b", lty=2, col="bnck")
lines(rownames(q5.n), q5.sn[,3], type="b", lty=3, col="gray")
lines(rownames(q5.n), q5.n[,3], type="b", lty=4, col="orange")
lines(rownames(q5.n), q5.n[,3], type="b", lty=5, col="green")
lines(rownames(q5.n), q5.n[,3], type="b", lty=6, col="brown")


legend("topleft", legend=c("n", "n", "sn", "n", "n", "p"), col=c("blue", "bnck", "gray", "orange", "green", "brown"), lty=1:6)

#plot ses values for mpd pc.scores for all quantiles
plot(rownames(q5.ses.nc), q5.ses.nc[,3], type="b", lty=1, xnb="Elevation(m)", ynb="ses.mpd pc.scores", col="blue", ylim=c(-2.5, 2.5))
lines(rownames(q5.ses.nc), q5.ses.nc[,3], type="b", lty=2, col="bnck")
lines(rownames(q5.ses.nc), q5.ses.nc[,3], type="b", lty=3, col="gray")
lines(rownames(q5.ses.nc), q5.ses.nc[,3], type="b", lty=4, col="orange")
lines(rownames(q5.ses.nc), q5.ses.nc[,3], type="b", lty=5, col="brown")

legend("topright", legend=c("q5", "q5", "q5", "q5", "q5"), col=c("blue", "bnck", "gray", "orange", "brown"), lty=1:5)

#plot ses values for mntd pc.scores for all quantiles
plot(rownames(q5.ses.nc.mntd.a), q5.ses.nc.mntd.a[,3], type="b", lty=1, xnb="Elevation(m)", ynb="ses.mntd.a pc.scores", col="blue", ylim=c(-2.5, 2.5))
lines(rownames(q5.ses.nc.mntd.a), q5.ses.nc.mntd.a[,3], type="b", lty=2, col="bnck")
lines(rownames(q5.ses.nc.mntd.a), q5.ses.nc.mntd.a[,3], type="b", lty=3, col="gray")
lines(rownames(q5.ses.nc.mntd.a), q5.ses.nc.mntd.a[,3], type="b", lty=4, col="orange")
lines(rownames(q5.ses.nc.mntd.a), q5.ses.nc.mntd.a[,3], type="b", lty=5, col="brown")

legend("topright", legend=c("q5", "q5", "q5", "q5", "q5"), col=c("blue", "bnck", "gray", "orange", "brown"), lty=1:5)



#plot ses.mntd for each functional trait by elevation for each quantile

plot(rownames(q5.n.a), q5.n.a[,3], type="b", lty=1, xnb="Elevation(m)", ynb="q5 Ses.mntd.a traits", col="blue", ylim=c(-3.5, 3.5))
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=2, col="bnck")
lines(rownames(q5.n.a), q5.sn.a[,3], type="b", lty=3, col="gray")
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=4, col="orange")
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=5, col="green")
lines(rownames(q5.n.a), q5.n.a[,3], type="b", lty=6, col="brown")

legend("topright", legend=c("n", "n", "sn", "n", "n", "p"), col=c("blue", "bnck", "gray", "orange", "green", "brown"), lty=1:6)



plot(rownames(q5.n), q1.n[,3], type="b", lty=1, xlab="Elevation(m)", ylab="Ses.mntd n", col="blue", ylim=c(-5.0, 5.0))
lines(rownames(q5.n), q2.n[,3], type="b", lty=2, col="black")
lines(rownames(q5.n), q3.n[,3], type="b", lty=3, col="gray")
lines(rownames(q5.n), q4.n[,3], type="b", lty=4, col="orange")
lines(rownames(q5.n), q5.n[,3], type="b", lty=5, col="green")


legend("topright", legend=c("Q1", "Q2", "Q3", "Q4", "Q5"), col=c("blue", "black", "gray", "orange", "green"), lty=1:5)




