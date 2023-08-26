# CORRELATION ANALYSIS

## **LOAD LIBRARIES**

```{r}
library(tidyverse)
library(ggpubr)
library(gtsummary)
library(flextable)
library(report)
```

## **ATTACH DATA**

```{r}
df <- datasets::mtcars
attach(df)
View(df)
?mtcars
```

## **DESCRIPTIVE ANALYSIS**

```{r}
table1 <- tbl_summary(df)
table1
```

## **PEARSON'S CORRELATION ASSUMPTIONS**

1.  Level of Measurement: The two variables should be measured at the interval (eg, between 300 to 500) or ratio level (eg, BMI, eGFR).

2.  Linear Relationship: There should exist a linear relationship between the two variables.

    ```{r}
    plot(mpg,hp)
    ```

3.  Normality: Both variables should be roughly normally distributed.

    ```{r}
    hist(mpg)
    hist(hp)
    shapiro.test(mpg)
    shapiro.test(hp)
    ```

4.  Related Pairs: Each observation in the dataset should have a pair of values.

5.  No Outliers: There should be no extreme outliers in the dataset.

## **CORRELATION ANALYSIS**

```{r}
pc <- cor.test(mpg,hp,method = "pearson")
report(pc)
```

## PLOTS

```{r}
ggscatter(data=df,x="mpg",y="hp",add="reg.line",conf.int=T)
```
