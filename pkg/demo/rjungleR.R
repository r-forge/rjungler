"INFO" <- function(...) {
	a<-readline("press ENTER to continue")
}

INFO"LOAD IRIS DATA"
data(iris)

INFO"MAKE SIMPLE ANALYSIS AND GET GINI IMPORTANCE"
rj = rjungle("Species", iris, verbose = TRUE)
importance(rj)

INFO"... AND PERMUTATION IMPORTANCE"
rj = rjungle("Species", iris, importance = 4, verbose = TRUE)
importance(rj)

INFO"PREDICT (TRAIN SET)"
predict(rj, iris)

INFO"MAKE SIMPLE ANALYSIS AND SHOW MDS PLOT"
rj = rjungle("Species", iris,  proximity = TRUE, verbose = TRUE)
plotMDS(rj)
