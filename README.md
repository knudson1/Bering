# Bering


## Contents

- [Overview](#overview)
- [Repo Contents](#repo-contents)
- [System Requirements](#system-requirements)
- [Installation Guide](#installation-guide)
- [Examples](#examples)

# Overview
Welcome to the Bering repository, containing the production-ready version of the R package `Bering`. Using Monte Carlo and Markov chain Monte Carlo, this package conducts hypothesis tests for the time-series climate data presented by Karla Knudson,  Christina Ravelo, Ivano Aiello, Christina Knudson, Michelle Drake, and Tatsuhiko Sakamoto. 

# Repo Contents

- [R](./Bering/R): `R` package code.
- [man](./Bering/man): package documentation and usage of the `Bering` package on  real and simulated data examples.
- [data](./Bering/data): data included in the`Bering` package.


# System Requirements

## Hardware Requirements

The `Bering` package requires no special hardware.  Because the `Bering` package simulates data sets, computers with greater RAM will complete the analyses more quickly. However, a 'normal' computer should suffice: the analyses were initially completed using a 500 USD netbook purchased in 2012.





## OS Requirements

The `Bering` package was developed and tested on Ubuntu using version 3.4.3 of R. Additional testing was performed using Windows using version 3.4.3 of R. The package should be compatible with Windows, Mac, and Linux operating systems.









# Installation Guide

Before installing the `Bering` package, users should have downloaded and installed `R` version 3.1.1 or higher from from [CRAN](https://cran.r-project.org/).  Installing R  should take 2 to 3 minutes and installing the Bering package should take 1 to 2 minutes. 



This package will soon be available on [CRAN](https://cran.r-project.org/). In the meantime, the `devtools` package enables users to  install packages directly from GitHub. Once `devtools` is installed, type the following:

```
library(devtools)
install_github("knudson1/Bering/Bering")
library(Bering)
```

Detailed directions can be found online in many places, including [this source](http://kbroman.org/pkg_primer/pages/github.html).







# Examples
Examples are provided in the [documentation](./Bering/man).
