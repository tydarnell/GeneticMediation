

<!-- toc -->

April 26, 2020

# DESCRIPTION

```
Package: GeneticMediation
Type: Package
Title: Genetic Causal Mediation
Version: 1.1.0
License: GPL-3
URL: https://tydarnell.github.io/GeneticMediation,
    https://github.com/tydarnell/GeneticMediation
Authors@R: person("Ty", "Darnell", role = c("aut", "cre"), email = "tydarnell@gmail.com")
Author: Ty Darnell [aut, cre]
Maintainer: Ty Darnell <tydarnell@gmail.com>
Description: Provides methods for conducting causal mediation 
  analysis on data from the ROSMAP study and for cleaning, 
  matching, and preparing the data for analysis.
Encoding: UTF-8
LazyData: true
RoxygenNote: 7.1.0
Imports: BiocManager, data.table, IRanges, mediation, readr, stats
Suggests: tidyverse```


# `chr_numeric`: Chromosome Numeric

## Description


 Convert chromosome names from character to numeric.
 Useful when sorting a dataframe by chromosome number.


## Usage

```r
chr_numeric(Chr)
```


## Arguments

Argument      |Description
------------- |----------------
```Chr```     |     a character column or vector of chromosome names

# `clean_data`: Clean Data

## Description


 Clean snp.info, peak.info data and save as data/chipseq.RData


## Usage

```r
clean_data(snp.path, peak.path)
```


## Arguments

Argument      |Description
------------- |----------------
```snp.path```     |     path to SNP information dataframe
```peak.path```     |     path to Peak annotation dataframe

# `combine_data_spc`: Combine Data SNP-Peak-Clinical

## Description


 SNP-Peak-Clinical data: combine projid, SNPs, PCs, membership,
 age, gender, peaks, and outcome data for a chromosome


## Usage

```r
combine_data_spc(chr)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name

# `combine_data_spg`: Combine Data SNP-Peak-Gene

## Description


 SNP-Peak-Gene Data: combine projid, SNPs, PCs, membership,
 age, gender, peaks, gene and outcome data for a chromosome.


## Usage

```r
combine_data_spg(chr)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name

