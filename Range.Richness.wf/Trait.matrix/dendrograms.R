#Generating trait dendrograms
#Dendrograms will be generated for each trait separately and
using pca scores of traits

#First have to generate a distance matrix
dist.matrix=dist(pca.scores, method="euclidean")

#Calculate a UPGMA-based dendrogram using hierarchical clustering
dendro=hclust(dist.matrix, method="average")

#Generate dendrogram for a single trait
#Must assign rownames or the resulting dendrogram won't have species names
log.height=as.matrix(tdm.scaled[,1])
rownames(log.height)=rownames(tdm.scaled)
height.dendro=hclust(dist(log.height, method="euclidean"), method="average")
plot(height.dendro, cex=0.4)

log.la=as.matrix(tdm.scaled[,2])
rownames(log.la)=rownames(tdm.scaled)
la.dendro=hclust(dist(log.la, method="euclidean"), method="average")
plot(la.dendro, cex=0.4)

log.sla=as.matrix(tdm.scaled[,3])
rownames(log.sla)=rownames(tdm.scaled)
sla.dendro=hclust(dist(log.sla, method="euclidean"), method="average")
plot(sla.dendro, cex=0.4)

log.wood=as.matrix(tdm.scaled[,4])
rownames(log.wood)=rownames(tdm.scaled)
wood.dendro=hclust(dist(log.wood, method="euclidean"), method="average")
plot(wood.dendro, cex=0.4)

log.n=as.matrix(tdm.scaled[,5])
rownames(log.n)=rownames(tdm.scaled)
n.dendro=hclust(dist(log.n, method="euclidean"), method="average")
plot(n.dendro, cex=0.4)

log.p=as.matrix(tdm.scaled[,6])
rownames(log.p)=rownames(tdm.scaled)
p.dendro=hclust(dist(log.p, method="euclidean"), method="average")
plot(p.dendro, cex=0.4)
