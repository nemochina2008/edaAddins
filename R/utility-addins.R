#' Document a RStudio insert addin
#'
#' @export documentInsertAddin
documentInsertAddin <- function()
{
  statement <- "Name: name
Description: A description
Binding: insertAddin
Interactive: false"
  rstudioapi::insertText(statement)
}
