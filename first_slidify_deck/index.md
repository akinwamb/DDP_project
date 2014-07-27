---
title       : My Slidify Presentation
subtitle    : Reproducible Pitch Presentation
author      : Akinwamb
job         : Developing Data Products Project
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

This presentation obtain relevant descriptive statistics and create a histogram of data.

The dataset to be use in this presentation was originally extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973 - 74 models). So, I am interested in exploring and analysing the gas mileage in miles per gallon (mpg) variable.

The "mpg" is the first variable of the dataset provided from the mtcars{datasets}-R documentation website.


```r
data(mtcars) # data extracted from 1974 Motor Trend US magazine
dim(mtcars)
```

```
## [1] 32 11
```
The mtcars dataset has 32 rows with 11 columns.

--- .class #id

## The data

The first six cases of the dataset is shown as follows:

```r
head(mtcars) # shows the first six observations of the dataset
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

--- .class #id 

## Exploratory Data Analysis

The first variable, "mpg" is numeric and represent numbers of gas mileage in miles per gallon. It is obtained as follows:


```r
mydata <- mtcars$mpg
```
Its descriptive statistics are given as follows:

```r
summary(mydata); sd(mydata)
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##    10.4    15.4    19.2    20.1    22.8    33.9
```

```
## [1] 6.027
```

```r
mean((mydata-mean(mydata))^2) # mean square error
```

```
## [1] 35.19
```

--- .class #id

## Histogram


```r
hist(mydata, xlab = "Gas Mileage in miles per gallon",
            main = "Histogram of Gas Mileage", col = "lightgray")
```

![plot of chunk unnamed-chunk-5](assets/fig/unnamed-chunk-5.png) 
