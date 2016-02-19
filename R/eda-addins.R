# eda-addins.R
#' Insert statements for exploratory data analysis of a data frame
#'
#' @return Statements for exploring a data frame, including head,
#'          tail, colnames, column types, and dimensions
#' @export exploreDataFrameAddin
#'
exploreDataFrameAddin <- function()
{
  statement <- "colnames(object)
apply(object, 2, class)
dim(object)
head(object)
tail(object)"
  rstudioapi::insertText(statement)
}

#' Summarize and plot a histogram of a continuous random variable
#'
#' @export summarizeCrvAddin
#'
summarizeCrvAddin <- function()
{
  statement <- "summary(x)
hist(x, main = '', ylab = 'Frequency', xlab = 'Value')"
  rstudioapi::insertText(statement)
}

#' Write a matrix to csv
#' @export writeMatrixAddin
#'

writeMatrixAddin <- function()
{
  rstudioapi::insertText("MASS::write.matrix(mat, filename = 'mat.csv', sep = ',')")
}


