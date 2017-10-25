#perform a PCA on traits
pca=princomp(tdm.scaled)

#determine the proportion of the total variance explained by each axis
#included axes that explain over 90-95% of the variance
summary(pca)

#determine what traits are most heavily weighted on these axes
print(pca$loadings, cutoff=0.001)

#extract where each species lands on the PC axes that
make up the majority of the variance and use this to 
generate a distance matrix
#get pc$scores for columns 1-3 into new matrix
#give row names from the original trait matrix
pc.scores=pc$scores[,1:3]
rownames(pc.scores)=rownames(traits)

#calculate the multivariate Euclidean distance betwee all species
pc.dist.mat=dist(pc.scores, method="euclidean")



