betterKUenm: An R package for basic niche modeling analysis
================
Marlon E. Cobos, Ben Wiens, Daniel Rojas, Andres Herrera, Rahul
Raveendran, Weverton, Eric Ng’eno, Felipe Arias

- <a href="#package-description" id="toc-package-description">Package
  description</a>
- <a href="#installing-the-package"
  id="toc-installing-the-package">Installing the package</a>
  - <a href="#functions-in-ellipsenm"
    id="toc-functions-in-ellipsenm">Functions in ellipsenm</a>
- <a href="#ext_back-function-extract-background-data-from-variables"
  id="toc-ext_back-function-extract-background-data-from-variables">ext_back
  function: Extract background data from variables</a>
- <a
  href="#fitglm-function-fits-generalized-linear-models-for-only-presences-data"
  id="toc-fitglm-function-fits-generalized-linear-models-for-only-presences-data">fitGLM
  function: Fits Generalized Linear Models for only presences data</a>
- <a href="#occ_prep-function-extract-variables-in-coordinates"
  id="toc-occ_prep-function-extract-variables-in-coordinates">occ_prep
  function: Extract variables in coordinates</a>
- <a href="#projectionglrm-function-project-glms-to-raster-variables"
  id="toc-projectionglrm-function-project-glms-to-raster-variables">projectionGLRM
  function: Project GLMs to Raster Variables</a>
- <a href="#r-markdown" id="toc-r-markdown">R Markdown</a>
- <a href="#including-plots" id="toc-including-plots">Including Plots</a>

<br>

**This repository is for the project “betterKUenm” developed during
Marlon’s workshop Spring 2023.**

<br>

## Package description

The betterKUenm R package implements basic tools for ecological niche
modeling of species.

## Installing the package

\*betterKUenm** is in a GitHub repository and can be installed and/or
loaded using the code below (make sure to have Internet connection). One
of the functions to evaluate model performance in this package needs
compilation. That is why you must install a compilation tools before
installing the package, **Rtools** for Windows or other tools in other
Operative Systems. A guide for downloading and installing Rtools can be
found
<a href="http://jtleek.com/modules/01_DataScientistToolbox/02_10_rtools/#1" target="_blank">here</a>.
IMPORTANT note: Add Rtools to the **PATH\*\* during its installation.

Try the code below first… If you have any problem during the
installation, restart your R session, close other sessions you may have
open, and try again. If during the installation you are asked to update
packages, please do it (select the option that says All). If any of the
packages gives an error, please install it alone using
install.packages(), then try re-installing **betterKUenm** again. Also,
it may be a good idea to update R and RStudio (if you are using it).

``` r
# Installing and loading packages
if(!require(devtools)){
    install.packages("devtools")
}
if(!require(remotes)){
    install.package("remotes")  
}
if(!require(betterKUenm)){
    devtools::install_github("omys-omics/betterKUenm")
}
library(betterKUenm)
```

<br>

### Functions in ellipsenm

A complete list of the main functions in the **betterKUenm** package can
be found in the package documentation. Use the following code to see the
list.

``` r
help(betterKUenm)
```

<br>

## ext_back function: Extract background data from variables

ext_back mask the environmental variables and extract the values of n
cells at random

We encourage the users to check the function’s help before using it.
This is possible using the code below:

``` r
help(betterKUenm_ext_back)
```

<br>

## fitGLM function: Fits Generalized Linear Models for only presences data

We encourage the users to check the function’s help before using it.
This is possible using the code below:

``` r
help(betterKUenm_fitGLM)
```

<br>

## occ_prep function: Extract variables in coordinates

Extract variables in coordinates

We encourage the users to check the function’s help before using it.
This is possible using the code below:

``` r
help(betterKUenm_occ_prep)
```

<br>

## projectionGLRM function: Project GLMs to Raster Variables

We encourage the users to check the function’s help before using it.
This is possible using the code below:

``` r
help(betterKUenm_occ_prep)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax
for authoring HTML, PDF, and MS Word documents. For more details on
using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that
includes both content as well as the output of any embedded R code
chunks within the document. You can embed an R code chunk like this:

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

## Including Plots

You can also embed plots, for example:

![](README_files/figure-gfm/pressure-1.png)<!-- -->

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.
