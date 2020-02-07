
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datalaker

<!-- badges: start -->

<!-- badges: end -->

The goal of datalaker is to provide a R interface to the datalake API
from the french MTES-MCT.

## Installation

You can install the dev version of datalaker from
[github](https://github.com/MaelTheuliere/datalaker) with:

``` r
remotes::install_github("MaelTheuliere/datalaker)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(datalaker)
## basic example code to download sitadel data
sitadel <- fishing(datafileid = "6d031ea5-d1e0-4bd6-82de-1bc3e14acdf2", millesime = "2019-06")
```