# addins.R

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
mapAddin <- function()
{
  statement <- "unlist(Map(function(x) (x), object))"
  rstudioapi::insertText(statement)
  rstudioapi::insertText("")
}


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

#' Get data entry from GEO
#'
#' @export getGEOAddin
#'
getGEOAddin <- function()
{
  rstudioapi::insertText("ma <- GEOquery::getGEO('GSExxxx')[[1]]")
}

#' Explore microarray data (ExpressionSet)
#'
#' @export exploreExpressionSetAddin
#'
exploreExpressionSetAddin <- function()
{
  statement <- "experimentData(ma)
varLabels(ma)
nrow(exprs(ma))
sampleNames(ma)
fvarLabels(ma)
fvarMetadata(ma)
head(featureData(ma))
head(exprs(ma))

#MASS::write.matrix(exprs(ma), filename = 'ma.csv', sep = ',')
#save(ma, file = 'ma.rda')
#load(file = 'ma.rda')"
  rstudioapi::insertText(statement)
}

#' Load GEO entry from NCBI and explore ExpressionSet
#'  varLabels(featureData(ma[[1]]))

#' @export microarrayExpressAddin
#'
microarrayExpressAddin <- function()
{
  getGEOAddin()
  rstudioapi::insertText("\n")
  exploreExpressionSetAddin()
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



