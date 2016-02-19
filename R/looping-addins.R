# looping-addins.R


#' Insert template foreach statement
#'
#' @return foreach loop statement template
#' @export foreachAddin

foreachAddin <- function()
{
  statement <- "foreach(i = 1:nrow(df)) %do% df[i,]"
  rstudioapi::insertText(statement)
}

#' Insert anonymous function map statement
#'
#' @return Anonymous function map statement
#' @export mapAddin

mapAddin <- function()
{
  statement <- "Map(function(x) (x), object)"
  rstudioapi::insertText(statement)
  rstudioapi::insertText("")
}

#' Insert anonymous function map statement that transforms output to atomic
#'  vector
#'
#'  @export mapUnlistAddin
#'
mapUnlistAddin <- function()
{
  statement <- "unlist(Map(function(x) (x), object))"
  rstudioapi::insertText(statement)
  rstudioapi::insertText("")
}

#' New function template
#'
#' @export functionTemplateAddin
#'
functionTemplateAddin <- function()
{
  statement <- "#' What does this function do?\n#'\n#' @importFrom package function\n#' @param x numeric\n#' @return res a numeric\n#' @export fn

fn <- function(x)
{
  stopifnot(is.character(x))
  res <- x
  res
}"

  rstudioapi::insertText(statement)
}

#' Apply new function to an object
#' @export splitAndApplyAddin

splitAndApplyAddin <- function()
{
  functionTemplateAddin()
  rstudioapi::insertText("\n")
  rstudioapi::insertText("out <- parallel::mclapply(x, fn)\n")
  rstudioapi::insertText("#out <- Map(fn, x)\n")
  rstudioapi::insertText("#out <- apply(x, 1, fn)\n")
}
