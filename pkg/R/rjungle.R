# Copyright (C) 2008-2010  Daniel F. Schwarz
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#


rjungle <- function(
		depVarName = "",
		data = NULL,
		dataFileName = NULL,
		ntree = 500,
		mtry = NULL,
		replace = TRUE,
		proximity = FALSE,
		importance = 1, # default: GINI-Index
		keepJungle = TRUE,
		balanceData = FALSE, # experimental
		nthread = 0, # maximal number
		seed = 123,
		verbose = FALSE,
		treeType = 1, 
		convertdata=FALSE, #convert data when factors available
		options = ""
		) {

	# importance
	if (is.null(data) & is.null(dataFileName)) 
		stop("Please, specify data or dataFileName.")

	# get mtry
	if (is.null(mtry)) {
		mtry = 0
		if (!is.null(data[,depVarName]) && !is.factor(data[,depVarName])) {
			max(floor(ncol(data)/3), 1)
		} else {
			floor(sqrt(ncol(data)))
		}
	}

	# convert data  
	if (convertdata) {
		isFacResponse = FALSE;
		isFacPredictors = FALSE;
		isFloating = FALSE;
		if (depVarName == "") treeType = 1 else treeType = 2;

		mydata = data
		predAreFac = c()
		for (i in 1:ncol(mydata)) {
			if (is.factor(mydata[,i])) {
				if (depVarName != "") {
					if (colnames(mydata)[i] == depVarName) isFacResponse = TRUE;
					if (colnames(mydata)[i] != depVarName)
						predAreFac = c(predAreFac, TRUE) else predAreFac = c(predAreFac, FALSE)
				}
				mydata[,i] = as.integer(mydata[,i]) # convert factor to integer
			} else {
				isNA = is.na(mydata[,i]);
				if (sum(as.integer(mydata[!isNA,i]) == mydata[!isNA,i]) == 0) isFloating = TRUE;
			}
		}

		if (all(predAreFac)) isFacPredictors = TRUE;

		# get tree type
		if (isFacResponse && !isFacPredictors && !isFloating) treeType = 1;
		if (isFacResponse && !isFacPredictors && isFloating) treeType = 6;
		#if (!isFacResponse && !isFacPredictors) treeType = 2;
		if (isFacResponse && isFacPredictors) treeType = 3;
		if (!isFacResponse && isFacPredictors) warning(RJ__MSG1);
	} else {
		mydata = data;
	}


	# write data
	fileNameIn = tempfile("rjungledata")
	fileNameOut = tempfile("rjungledata")

	write.table(mydata, file = fileNameIn, row.names = FALSE, quote = FALSE)

	# do the jungle
	system(paste(
					RJ__EXECNAME,
					"-f", fileNameIn,
					if (depVarName != "") "-D", depVarName,
					"-y", treeType,
					"-o", fileNameOut,
					"-t", ntree,
					"-m", mtry,
					"-z", seed,
					"-i", importance,
					"-U", nthread,
					if (replace) "-u",
					if (proximity) "-s",
					if (keepJungle) "-w2",
					if (balanceData) "-W",
					if (verbose) "-v",
					options
					))


	# create object
	rj = new(
			"rjungle",
			tmpDir = tempdir(),
			tmpFile = fileNameOut,
			depVarName = depVarName,
			treeType = treeType,
			ntree = ntree,
			mtry = mtry,
			seed = seed,
			importance = importance,
			proximity = proximity,
			replace = replace,
			keepJungle = keepJungle,
			balanceData = balanceData,
			verbose = verbose
			)

	return(rj)
}

