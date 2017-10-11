#Generating trait dendrograms
#Dendrograms will be generated for each trait separately and
using pca scores of traits

#First have to generate a distance matrix
dist.matrix=dist(pca.scores, method="euclidean")

#Calculate a UPGMA-based dendrogram using hierarchical clustering
dendro=hclust(dist.matrix, method="average")

#Generate dendrogram for a single trait
#Must assign rownames or the resulting dendrogram won't have species names
trait.1=as.matrix(traits[,1])
rownames(trait.1)=rownames(traits)
dendro.trait.1=hclust(dist(trait.1, method="euclidean"), method="average")