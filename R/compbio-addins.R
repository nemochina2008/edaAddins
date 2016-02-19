# compbio-addins.R


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
