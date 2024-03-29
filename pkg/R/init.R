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


library(methods)

RJ__EXECNAME = paste("rjungle", "", sep = "") 
RJS__EXECNAME = paste("rjunglesparse", "", sep = "")

RJ__MSG1 = "Regression with categorical predictor variables. Factors are converted to integers."
RJ__MSG2 = "No proximity was calculated. Try rjungle(..., proximity = TRUE)"
RJ__MSG3 = "No jungle/forest was saved. Try rjungle(..., keepJungle = TRUE)"
RJ__MSG4 = "No imputed file was found."

setClass(
  "rjungle",
  representation(
    tmpDir = "character",
    tmpFile = "character",
    depVarName = "character",
    treeType = "numeric",
    ntree = "numeric",
    mtry = "numeric",
    seed = "numeric",
    importance = "numeric",
    proximity = "logical",
    replace = "logical",
    keepJungle = "logical",
    balanceData = "logical",
    verbose = "logical"
    ),
  package = "rjungleR"
  )
