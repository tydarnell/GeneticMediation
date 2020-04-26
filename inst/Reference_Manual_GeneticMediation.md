

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

# `data_by_chr`: Data by Chromosome

## Description


 save snp.info, peak.info for each chromosome
 as "data/chipseq_ `chr` .RData"


## Usage

```r
data_by_chr(chrs, snps, peaks)
```


## Arguments

Argument      |Description
------------- |----------------
```chrs```     |     Character vector of chromosomes names
```snps```     |     SNP information dataframe
```peaks```     |     Peak information dataframe

# `data_prep_spc`: SNP-Peak-Clinical Data Prep Helper

## Description


 Helper function for SNP-Peak-Clinical mediation data.
 Combine projid, SNPs, PCs, membership, age, gender, peaks, and outcome data for a chromosome


## Usage

```r
data_prep_spc(chr)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name

# `data_prep_spg`: SNP-Peak-Gene Data Prep Helper

## Description


 Helper function for SNP-Peak-Gene data prep.
 Combine projid, SNPs, PCs, membership, age, gender, peaks, gene and
 outcome data for a chromosome.


## Usage

```r
data_prep_spg(chr)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name

