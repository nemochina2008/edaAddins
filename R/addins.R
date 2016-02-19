# addins.R

#' Insert template foreach statement
#'
#' @return foreach loop statement template
#' @export foreachAddin

foreachAddin <- function()
{
  statement <- "foreach(i = 1:nrow(df)) %do% [i]"
  rstudioapi::insertText(statement)
}

#' Insert anonymous function map statement
#'
#' @return Anonymous function map statement
#' @export mapAddin

mapAddin <- function()
{
  statement <- "Map(function(x), object)"
  rstudioapi::insertText(statement)
}


#' Insert statements for exploratory data analysis of a data frame
#'
#' @return Statements for exploring a data frame, including head,
#'          tail, colnames, column types, and dimensions
#' @export exploreDataFrameAddin
#'
exploreDataFrameAddin <- function()
{
  statement <- "sapply(object, colnames)
sapply(object, class)
dim(object)
head(object)
tail(object)"
  rstudioapi::insertText(statement)
}

