---
title: "edaAddins"
author: 'Justin Taylor'
date: '2016-02-19'
output:
  html_document:
    theme: united
  pdf_document: default
email: <taylo5jm@dukes.jmu.edu>
---



edaAddins is a R package with functions and RStudio addins for exploratory data analysis. 

# Installation

edaAddins is currently only available on GitHub. Install the package in your project with `devtools`. edaAddins also requires the latest version of RStudio. If you do not see an "Addins" dropdown menu in your versio of RStudio, the version that you have is incompatible with edaAddins.


```r
# install.packages('rstudioapi')
devtools::install_github("taylo5jm/edaAddins")
library(edaAddins)
```

# Usage

Most objects in this package are registered RStudio addins. After loading `edaAddins`, you should see new Addins in the RStudio toolbar. The output of selected addins are displayed below. Addins >> Browse addins... in RStudio is a good way to look at some addins available.



```r
edaAddins::exploreDataFrameAddin()
```


```r
sapply(object, colnames)
sapply(object, class)
dim(object)
head(object)
tail(object)
```


```r
easyeda::foreachAddin()
foreach(i = 1:nrow(df)) %do% [i]
```


```r
easyeda::mapAddin()
Map(function(x) (x), object)
```









------------------------------------------  

\newpage  


Document last compiled on 2016-02-19 15:23:42

```r
sessionInfo()
```

```
## R version 3.2.3 (2015-12-10)
## Platform: x86_64-redhat-linux-gnu (64-bit)
## Running under: Fedora 23 (Workstation Edition)
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
## [1] magrittr_1.5     formatR_1.2.1    tools_3.2.3      rmdtemplates_0.1
## [5] stringi_1.0-1    knitr_1.12.3     stringr_1.0.0    evaluate_0.8
```

