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
labels=c("q5 (8.85%)", "q5 (20.66%)", "q5 (23.00%)", "q5 (7.72%)", "q5 (23.17%)"), 
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


#plot ses.mpd for each functional trait by elevation for each quantile

plot(rownames(q5.p.a), q5.p.a[,3], type="b", lty=1, xlab="Elevation(m)", ylab="Ses.mpd.Abundance p", col="blue", ylim=c(-2.5, 2.5))
lines(rownames(q5.p.a), q5.p.a[,3], type="b", lty=2, col="black")
lines(rownames(q5.p.a), q5.p.a[,3], type="b", lty=3, col="gray")
lines(rownames(q5.p.a), q5.p.a[,3], type="b", lty=4, col="orange")
lines(rownames(q5.p.a), q5.p.a[,3], type="b", lty=5, col="green")

legend("bottomright", legend=c("q5", "q5", "q5", "q5", "q5"), col=c("blue", "black", "gray", "orange", "green"), lty=1:5)


q5.p.a=read.csv("q5.p.ses.a.output.csv", header=T, row.names=1)
q5.p.a=read.csv("q5.p.ses.a.output.csv", header=T, row.names=1)
q5.p.a=read.csv("q5.p.ses.a.output.csv", header=T, row.names=1)
q5.p.a=read.csv("q5.p.ses.a.output.csv", header=T, row.names=1)
q5.p.a=read.csv("q5.p.ses.a.output.csv", header=T, row.names=1)

plot(rownames(q5.height), q5.height[,3], type="b", lty=1, xlab="Elevation(m)", ylab="q5 ses.mpd traits", col="blue", ylim=c(-3.0, 3.0))
lines(rownames(q5.height), q5.la[,3], type="b", lty=2, col="black")
lines(rownames(q5.height), q5.sla[,3], type="b", lty=3, col="gray")
lines(rownames(q5.height), q5.wood[,3], type="b", lty=4, col="orange")
lines(rownames(q5.height), q5.n[,3], type="b", lty=5, col="green")
lines(rownames(q5.height), q5.p[,3], type="b", lty=6, col="brown")


legend("topleft", legend=c("height", "la", "sla", "wood", "n", "p"), col=c("blue", "black", "gray", "orange", "green", "brown"), lty=1:6)

#plot ses values for mpd pc.scores for all quantiles
plot(rownames(q1.ses.pc), q1.ses.pc[,3], type="b", lty=1, xlab="Elevation(m)", ylab="ses.mpd pc.scores", col="blue", ylim=c(-2.5, 2.5))
lines(rownames(q1.ses.pc), q2.ses.pc[,3], type="b", lty=2, col="black")
lines(rownames(q1.ses.pc), q3.ses.pc[,3], type="b", lty=3, col="gray")
lines(rownames(q1.ses.pc), q4.ses.pc[,3], type="b", lty=4, col="orange")
lines(rownames(q1.ses.pc), q5.ses.pc[,3], type="b", lty=5, col="brown")

legend("topright", legend=c("Q1", "Q2", "Q3", "Q4", "Q5"), col=c("blue", "black", "gray", "orange", "brown"), lty=1:5)

#plot ses values for mntd pc.scores for all quantiles
plot(rownames(q1.ses.pc.mntd.a), q1.ses.pc.mntd.a[,3], type="b", lty=1, xlab="Elevation(m)", ylab="ses.mntd.a pc.scores", col="blue", ylim=c(-2.5, 2.5))
lines(rownames(q1.ses.pc.mntd.a), q2.ses.pc.mntd.a[,3], type="b", lty=2, col="black")
lines(rownames(q1.ses.pc.mntd.a), q3.ses.pc.mntd.a[,3], type="b", lty=3, col="gray")
lines(rownames(q1.ses.pc.mntd.a), q4.ses.pc.mntd.a[,3], type="b", lty=4, col="orange")
lines(rownames(q1.ses.pc.mntd.a), q5.ses.pc.mntd.a[,3], type="b", lty=5, col="brown")

legend("topright", legend=c("Q1", "Q2", "Q3", "Q4", "Q5"), col=c("blue", "black", "gray", "orange", "brown"), lty=1:5)









