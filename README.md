
<!-- README.md is generated from README.Rmd. Please edit that file -->

# demopkg

<!-- badges: start -->
<!-- badges: end -->

The goal of demopkg is to provide data and analysis code for the paper
“Facial resemblance increases the attractiveness of same-sex faces more
than other-sex faces” (DeBruine, 2004).

## Installation

You can install the development version of demopkg from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("debruine/demopkg")
```

## Example

``` r
library(demopkg)

# load data from DeBruine (2004)
data("self_res_att")
```

``` r
# analyse female faces
apa_t_pair(x = self_res_att$f_self,
           y = self_res_att$f_non,
           dv = "preferences for female faces",
           level1 = "participants who resembled those faces",
           level2 = "non-self participants")
#> A paired-samples t-test was conducted to compare preferences for female faces between participants who resembled those faces (M = 3.5, SD = 1.6) and non-self participants (M = 3, SD = 1.2). There was a significant difference; t(197.2) = 2.92, p = 0.004.
```

``` r
# analyse male faces
apa_t_pair(x = self_res_att$m_self,
           y = self_res_att$m_non,
           dv = "preferences for male faces",
           level1 = "participants who resembled those faces",
           level2 = "non-self participants")
#> A paired-samples t-test was conducted to compare preferences for male faces between participants who resembled those faces (M = 3.5, SD = 1.4) and non-self participants (M = 2.9, SD = 1). There was a significant difference; t(190.9) = 3.83, p = 0.
```
