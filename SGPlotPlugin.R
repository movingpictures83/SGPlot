## ---- echo = FALSE, results = 'hide'---------------------------------------
library(knitr)
opts_chunk$set(error = FALSE)

## ----style, echo = FALSE, results = 'asis'---------------------------------
##BiocStyle::markdown()

## ---- message = FALSE------------------------------------------------------
library(SGSeq)


input <- function(inputfile) {
#   sgfc_ucsc <<- readRDS(inputfile)
   sgfc_pred_pred <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
## ----figure-1, fig.width=4.5, fig.height=4.5-------------------------------
pdf(outputfile)
par(mfrow = c(5, 1), mar = c(1, 3, 1, 1))
plotSpliceGraph(rowRanges(sgfc_pred_pred), geneID = 1, toscale = "none", color_novel = "red")
#print(str(sgfc_pred_pred))
write.csv(sgfc_pred_pred@assays@data$FPKM, paste(outputfile, "csv", sep="."))
#plotFeatures(sgfc_ucsc, geneID = 1)
}

