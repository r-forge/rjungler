library(rjungleR)

rj = rjungle("Species", iris, nthread = 1, seed = 1, ntree = 2, verbose = TRUE, convertdata = TRUE)

importance(rj)
