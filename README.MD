<!--
 * @Author: Rongxin rongxin@u.nus.edu
 * @Date: 2024-10-17 15:58:35
 * @LastEditors: Rongxin rongxin@u.nus.edu
 * @LastEditTime: 2024-10-17 16:46:03
-->

# README

This repository stores the needed data and files for replicating our paper:
*Deplatforming Donald Trump Reduced His Media Coverage but Not Audience Engagement*.

<img src="./figure/effect.sizes.png" width="300"/>  

## Files

- `data/`: stores the data for replication
- `code/`: stores the code for replication
- `README.md`: this file, providing an overview of the repository

## Replication

1. Clone / download this repository, and `cd` into the directory
2. Go to the directory of `code/`, e.g., `cd ./code/`
3. Run the R-script in `replication.R` to replicate the results, each replication will be commented with its DV and Platform

## Example Results

```
Loading required package: Matrix

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

============= Replicating: Media Coverage / Instagram =============

Call:
   felm(formula = eq, data = df) 

Residuals:
     Min       1Q   Median       3Q      Max 
-0.39837 -0.07515 -0.01398  0.05269  0.60592 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.19013    0.03512   5.414 1.72e-07 ***
g            0.20674    0.03355   6.162 3.78e-09 ***
s            0.16937    0.04589   3.691 0.000287 ***
l            0.13145    0.04060   3.238 0.001407 ** 
log1p(pres)  1.29100    0.13840   9.328  < 2e-16 ***
log1p(gop)   1.23594    0.15296   8.080 5.59e-14 ***
g:s         -0.17556    0.06074  -2.890 0.004264 ** 
g:l         -0.31652    0.04428  -7.148 1.54e-11 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.1338 on 204 degrees of freedom
Multiple R-squared(full model): 0.7182   Adjusted R-squared: 0.7085 
Multiple R-squared(proj model): 0.7182   Adjusted R-squared: 0.7085 
F-statistic(full model):74.26 on 7 and 204 DF, p-value: < 2.2e-16 
F-statistic(proj model): 74.26 on 7 and 204 DF, p-value: < 2.2e-16 


============= Replicating: Audience Engagement / Instagram =============

Call:
   felm(formula = eq, data = df) 

Residuals:
     Min       1Q   Median       3Q      Max 
-0.63513 -0.17905 -0.03191  0.14631  0.93543 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)   0.71505    0.05213  13.718  < 2e-16 ***
g             0.02176    0.05415   0.402  0.68819    
s             0.02998    0.08505   0.353  0.72478    
l             0.15365    0.06598   2.329  0.02084 *  
log1p(pres)  14.79041   41.76721   0.354  0.72362    
log1p(gop)  -24.95734   38.97279  -0.640  0.52265    
g:s           0.36352    0.11859   3.065  0.00247 ** 
g:l          -0.03006    0.07834  -0.384  0.70157    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.2608 on 204 degrees of freedom
Multiple R-squared(full model): 0.128   Adjusted R-squared: 0.09812 
Multiple R-squared(proj model): 0.128   Adjusted R-squared: 0.09812 
F-statistic(full model):4.279 on 7 and 204 DF, p-value: 0.0001951 
F-statistic(proj model): 4.279 on 7 and 204 DF, p-value: 0.0001951 
```

## Anonymization

The data in `data/` is anonymized (including personal information, source media outlets and so on so forth) and does not contain any sensitive information. It is only used for the purpose of replication the main results.

## Contact

If you have any questions, please contact our corresponding author, Subhayan Mukerjee; or Rongxin Ouyang, who maintain the repository. Their emails are provided in the paper.

## Citation

- Link to our paper:
`TBD`
- APA
`TBD`
- BibTex
`TBD`
