#Calculating MPD and MNTD
#Distance matrix needed can be calculated from raw trait data or from the dendrograms
#If use dendrogram, first convert it to a distance matrix
dendro.dist.mat=cophenetic(dendro)

#For raw trait data, input distance matrix from pca.scores
square.dist.mat=as.matrix(pca.dist.matrix)

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
dbFD(traits.scaled. cdm)$FRic