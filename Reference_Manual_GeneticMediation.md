

<!-- toc -->

# GeneticMediation <img src='man/figures/logo.png' align="right" height="139" />

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
Suggests: tidyverse
```

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

# `GeneticMediation`: GeneticMediation: A package for conducting causal mediation analysis on ROSMAP data

## Description


 GeneticMediation provides methods for conducting causal mediation analysis on data from the ROSMAP study.
 It also provides methods for cleaning, matching, and preparing the data for analysis.


## Seealso


 Useful links:


*   [https://tydarnell.github.io/GeneticMediation](https://tydarnell.github.io/GeneticMediation)   

*   [https://github.com/tydarnell/GeneticMediation](https://github.com/tydarnell/GeneticMediation)  



## Author


 Maintainer : Ty Darnell tydarnell@gmail.com



# `last_to_first`: Last to First

## Description


 Make the last column the first column in a dataframe


## Usage

```r
last_to_first(df)
```


## Arguments

Argument      |Description
------------- |----------------
```df```     |     dataframe

# `lu`: Length Unique

## Description


 Get the length of unique values in a vector


## Usage

```r
lu(x)
```


## Arguments

Argument      |Description
------------- |----------------
```x```     |     vector

# `make_folder`: Make Folder

## Description


 Make a folder only if the folder does not already exist


## Usage

```r
make_folder(path)
```


## Arguments

Argument      |Description
------------- |----------------
```path```     |     folder path

# `match_all`: Match SNPs Peaks All Chromosomes

## Description


 Match SNPs and Peaks in all chromosomes and
 return dataframe of matches


## Usage

```r
match_all(snp.info, peak.info, chrs)
```


## Arguments

Argument      |Description
------------- |----------------
```snp.info```     |     SNP information
```peak.info```     |     Peak information
```chrs```     |     character vector of chromosome names

# `match_snp_peak`: Match SNPs and Peaks

## Description


 Match SNPs and Peaks in a chromosome


## Usage

```r
match_snp_peak(snp.info, peak.info)
```


## Arguments

Argument      |Description
------------- |----------------
```snp.info```     |     SNP information for chr
```peak.info```     |     Peak information chr

# `med.res_spc`: SNP-Peak-Clinical Mediation Data Prep

## Description


 Prepare a chromosome of SNP-Peak-Clinical data for mediation analysis
 and save as "data/spc.res/res_ `chr` .RData"


## Usage

```r
med.res_spc(chr, all_matches)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name
```all_matches```     |     dataframe of SNP-Peak matches for all chromosomes

# `med.res_spg`: SNP-Peak-Gene Mediation Data Prep

## Description


 Prepare a chromosome SNP-Peak-Gene data for mediation analysis data
 and save as "data/spg.res/res_ `chr` .RData"


## Usage

```r
med.res_spg(chr, med.data, matches, mediator.path)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name
```med.data```     |     gene mediation data
```matches```     |     SNP-Peak-Gene matches dataframe

# `med_all_spc`: SNP-Peak-Clinical Mediation Table

## Description


 Create a table of SNP-Peak-Clinical mediation results
 for all chromosomes


## Usage

```r
med_all_spc(chrs, covar, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```chrs```     |     character vector of chromosome names
```covar```     |     covariates string, each covariate separated by +
```simulations```     |     number of simulations to run

# `med_chr_spc`: SNP-Peak-Clinical Mediation Table Chromosome

## Description


 Create SNP-Peak-Clinical mediation table for SNP-Peak matches in a chromosome


## Usage

```r
med_chr_spc(matches, med.res.data, covar, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```matches```     |     SNP-Peak matches dataframe for a chromosome
```med.res.data```     |     mediation data
```covar```     |     covariates string, separate covariates with +
```simulations```     |     number of simulations to run

# `med_chr_spg`: SNP-Peak-Gene Mediation Table Chromosome

## Description


 Create a SNP-Peak-Gene mediation table for a chromosome


## Usage

```r
med_chr_spg(chr, gene_matches, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name
```gene_matches```     |     list of peak-SNP matches for each gene
```simulations```     |     number of simulations to run

# `med_table_spc`: SNP-Peak-Clinical Mediation Table

## Description


 Create SNP-Peak-Clinical mediation table for a SNP-Peak match


## Usage

```r
med_table_spc(med.res.data, match_row, covar, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```med.res.data```     |     mediation data
```match_row```     |     row in match dataframe, should have 2 columns
```covar```     |     covariates character variable, separate covariates with +
```simulations```     |     number of simulations to run

# `med_table_spg`: SNP-Peak-Gene Mediation Table

## Description


 Create a mediation table for one SNP-Peak-Gene match


## Usage

```r
med_table_spg(med_dat, match_row, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```med_dat```     |     gene mediation data
```match_row```     |     row in match dataframe: col1 SNP, col2 Peak, col3 Gene
```simulations```     |     number of simulations to run

# `snp_peak_bychr`: SNPs and Peaks by Chromosome

## Description


 save snp.info, peak.info for each chromosome
 as "data/chipseq/chipseq_ `chr` .RData"


## Usage

```r
snp_peak_bychr(chrs, snps, peaks)
```


## Arguments

Argument      |Description
------------- |----------------
```chrs```     |     Character vector of chromosomes names
```snps```     |     SNP information dataframe
```peaks```     |     Peak information dataframe

# `sum_zero`: Sum Zero

## Description


 Get names of columns that have a sum of zero


## Usage

```r
sum_zero(df)
```


## Arguments

Argument      |Description
------------- |----------------
```df```     |     dataframe

# `transpose_readcount`: Transpose Readcount

## Description


 Read in and transpose ChIP-seq Readcount dataframe and match project id


## Usage

```r
transpose_readcount(readcount.path)
```


## Arguments

Argument      |Description
------------- |----------------
```readcount.path```     |     ChIP-seq readcount dataframe file path
