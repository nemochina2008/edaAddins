# rmd-addins.R

#' Convert matrix output to latex
#'
#' @importFrom rstudioapi insertText
#' @param matr Numeric matrix
#' @return LaTeX typesetted matrix
#' @export matrix2latex
#' @examples
#' {
#' matr <- matrix(data = c(1, 0, 0,
#'                         0, 1, 0,
#'                         0, 0, 1), nrow = 3, ncol = 3)
#' #matrix2latex(matr)
#' }

matrix2latex <- function(matr) {
  printmrow <- function(x) {
    ret <- paste(paste(x,collapse = " & "),"\\\\ \n")
    sprintf(ret)
  }
  out <- apply(matr, 1, printmrow)
  out <- paste("\\begin{bmatrix}",paste(out,collapse=''),"\\end{bmatrix}")
  rstudioapi::insertText(out)
}


#' Insert template for a response to a question
#'
#' @export questionTemplateAddin

questionTemplateAddin <- function()
{
  statement <- "#
  ```{r}
  these_data <- c()
  ```

  ##

  "
  rstudioapi::insertText(statement)
}

#' Insert a new code chunk with xtable template
#'
#' @export xtableAddin
#'

xtableAddin <- function()
{
  statement <- "```{r, results = 'asis', echo = FALSE}
xtable::xtable(df, align = rep('c', ncol(df) + 1), digits = rep(3, ncol(df) + 1),
caption = '')
```"
  rstudioapi::insertText(statement)
}

#' Insert a new code chunk with DT template
#'
#' @export dtAddin
#'
dtAddin <- function()
{
  statement <- "```{r, results = 'asis', echo = FALSE}
DT::datatable(df)
```"
  rstudioapi::insertText(statement)
}
