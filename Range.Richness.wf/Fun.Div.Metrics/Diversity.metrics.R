#Calculating MPD and MNTD
#Distance matrix needed can be calculated from raw trait data or from the dendrograms

trait.height=as.matrix(all.traits$log.height.ft)
rownames(trait.height)=rownames(all.traits)
dist.trait.height=dist(trait.height, method="euclidean")

trait.la=as.matrix(all.traits$log.la)
rownames(trait.la)=rownames(all.traits)
dist.trait.la=dist(trait.la, method="euclidean")

trait.sla=as.matrix(all.traits$log.sla)
rownames(trait.sla)=rownames(all.traits)
dist.trait.sla=dist(trait.sla, method="euclidean")

trait.wood=as.matrix(all.traits$log.wood)
rownames(trait.wood)=rownames(all.traits)
dist.trait.wood=dist(trait.wood, method="euclidean")

trait.n=as.matrix(all.traits$log.n)
rownames(trait.n)=rownames(all.traits)
dist.trait.n=dist(trait.n, method="euclidean")

trait.p=as.matrix(all.traits$log.p)
rownames(trait.p)=rownames(all.traits)
dist.trait.p=dist(trait.p, method="euclidean")

#Convert distance matrix into a square matrix for each trait

sq.dist.height=as.matrix(dist.trait.height)
sq.dist.la=as.matrix(dist.trait.la)
sq.dist.sla=as.matrix(dist.trait.sla)
sq.dist.wood=as.matrix(dist.trait.wood)
sq.dist.n=as.matrix(dist.trait.n)
sq.dist.p=as.matrix(dist.trait.p)

#For raw trait data, input distance matrix from pca.scores
square.dist.mat=as.matrix(pca.dist.mat)

#Calculate mpd, abundance.weighted is FALSE
mpd(cdm, square.dist.mat, abundance.weighted=F)

#Calculate mpd, abundance.weighted is TRUE
mpd(cdm, square.dist.mat, abundance.weighted=T)

#Calculate mntd, abundance.weighted is FALSE
mntd(cdm, square.dist.mat, abundance.weighted=F)

#Calculate mntd, abundance.weighted is TRUE
mntd(cdm, square.dist.mat, abundance.weighted=T)

#Calculating functional richness FRic
install.packages("FD")
library(FD)

#Use dbFD() to output the FRic values for the plots
#PCA performed with this function for you
dbFD(traits.scaled, cdm)$FRic