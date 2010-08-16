library(rjungleR)

rj = rjungle("Species", iris, ntree = 2, proximity = TRUE, nthread = 1, seed = 1, verbose = TRUE, convertdata = TRUE)

postscript()
plotMDS(rj)
dev.off()
