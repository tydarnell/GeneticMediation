---
output:
  pdf_document: default
  html_document: default
---


<!-- toc -->

April 23, 2020

# DESCRIPTION

```
Package: GeneticMediation
Type: Package
Title: Genetic Causal Mediation
Version: 0.1.0
Author: Ty Darnell
Maintainer: Ty Darnell <tydarnell@gmail.com>
Description: Causal mediation analysis package for ROSMAP study data.
    Provides functions for cleaning, matching and preparing the data for
    causal mediaiton analysis and conducting the causal mediation analysis.
License: GPLv3
Encoding: UTF-8
LazyData: true
RoxygenNote: 7.1.0
Imports: data.table, IRanges, mediation 
```


# `chr_sort`: Chromosome Sort

## Description


 Sort chromosomes in ascending order


## Usage

```r
chr_sort(Chr)
```


## Arguments

Argument      |Description
------------- |----------------
```Chr```     |     character vector of chromosome names

## Value


 A character vector, sorted in ascending order of chromosome number


## Examples

```r 
 Chr=c("chr3","chr7","chr6","chr2")
 chr_sort(Chr)
 ``` 

# `clean_data`: Clean Data

## Description


 Clean snp.info and peak.info data and save as RData file


## Usage

```r
clean_data(snp.info, peak.info)
```


## Arguments

Argument      |Description
------------- |----------------
```snp.info```     |     SNP information dataframe
```peak.info```     |     Peak annotation dataframe

## Examples

```r 
 clean_data_function()
 ``` 

# `data_by_chr`: Data by Chromosome

## Description


 Make RData file containing snp.info, peak.info for each chromosome


## Usage

```r
data_by_chr(chrs, snps, peaks)
```


## Arguments

Argument      |Description
------------- |----------------
```chrs```     |     Character vector of chromosomes names with Peak-SNP matches
```snps```     |     SNP information dataframe
```peaks```     |     Peak information dataframe

## Examples

```r 
 data_by_chr_function()
 ``` 

# `gene_data`: Gene Data Prep

## Description


 Gene data prep for a chromosome


## Usage

```r
gene_data(chr)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name

## Examples

```r 
 gene_data_function()
 ``` 

# `gene_mediation_table`: Gene Mediation Table

## Description


 Create a mediation table for one match in the gene data


## Usage

```r
gene_mediation_table(med_dat, match_row, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```med_dat```     |     gene mediation data
```match_row```     |     row in match dataframe: col1 SNP, col2 peak, col3 gene
```simulations```     |     number of simulations to run

## Examples

```r 
 gene_mediation_table_function()
 ``` 

# `gene_mediation_table_chr`: Gene Mediation Table Chromosome

## Description


 Create a mediation table for an entire chromosome of gene data


## Usage

```r
gene_mediation_table_chr(chr, matches_by_gene, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name
```matches_by_gene```     |     list of peak-SNP for each gene
```simulations```     |     number of simulations to run

## Examples

```r 
 gene_mediation_table_chr_function()
 ``` 

# `gene_res`: Gene Results Prep

## Description


 Mediation analysis gene data prep for a chromosome


## Usage

```r
gene_res(chr, med.data, matches)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name
```med.data```     |     gene mediation data
```matches```     |     gene matches dataframe

## Examples

```r 
 gene_res_function()
 ``` 

# `last_to_first`: Last to First

## Description


 Make the last column the first column


## Usage

```r
last_to_first(df)
```


## Arguments

Argument      |Description
------------- |----------------
```df```     |     dataframe

## Examples

```r 
 last_to_first_function()
 ``` 

# `lu`: Length Unique

## Description


 Get the length of unique values of a vector


## Usage

```r
lu(x)
```


## Arguments

Argument      |Description
------------- |----------------
```x```     |     vector

## Examples

```r 
 lu_function()
 ``` 

# `make_folder`: Make Folder

## Description


 Make a folder only if the folder does not exist


## Usage

```r
make_folder(path)
```


## Arguments

Argument      |Description
------------- |----------------
```path```     |     path for new folder

## Examples

```r 
 make_folder_function()
 ``` 

# `match_allchrs`: Match all Chromosomes

## Description


 Match Peaks and SNPs in a character vector of chromosome names


## Usage

```r
match_allchrs(snp.info, peak.info, chrs)
```


## Arguments

Argument      |Description
------------- |----------------
```snp.info```     |     SNP information
```peak.info```     |     Peak information
```chrs```     |     character vector of chromosome names

## Examples

```r 
 match_allchrs_function()
 ``` 

# `match_chr`: Match Chromosome

## Description


 Match Peaks and SNPs in a chromosome


## Usage

```r
match_chr(snp.info, peak.info)
```


## Arguments

Argument      |Description
------------- |----------------
```snp.info```     |     SNP information
```peak.info```     |     Peak information

## Examples

```r 
 match_chr_function()
 ``` 

# `med_data_prep`: Mediation Data Prep

## Description


 Combine projid, SNPs, PCs, membership, age, gender, peaks, and outcome data for a chromosome


## Usage

```r
med_data_prep(chr)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name

## Examples

```r 
 med_data_prep_function()
 ``` 

# `med_res_data`: Mediation Result Data Prep

## Description


 Mediation analysis data prep for a chromosome


## Usage

```r
med_res_data(chr)
```


## Arguments

Argument      |Description
------------- |----------------
```chr```     |     chromosome name

## Examples

```r 
 med_res_data_function()
 ``` 

# `med_res_data_save`: Mediation Result Data Save

## Description


 Save Mediation analysis data and matches for each chromosome


## Usage

```r
med_res_data_save(chrs, all_matches)
```


## Arguments

Argument      |Description
------------- |----------------
```chrs```     |     character vector of chromosome names
```all_matches```     |     dataframe of peak-SNP matches for all chromosomes

## Examples

```r 
 med_res_data_save_function()
 ``` 

# `mediation_table`: Mediation Table

## Description


 Create a mediation table for one peak-SNP match


## Usage

```r
mediation_table(med.res.data, match_row, covar, outcome, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```med.res.data```     |     mediation data
```match_row```     |     row in match dataframe, should have 2 columns
```covar```     |     covariates character variable, separate covariates with +
```outcome```     |     outcome character variable
```simulations```     |     number of simulations to run

## Examples

```r 
 mediation_table_function()
 ``` 

# `mediation_table_allchr`: Mediation Table all Chromosomes

## Description


 Create a table of mediation results for a character vector of chromosome names


## Usage

```r
mediation_table_allchr(chrs, folderpath, covar, outcome, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```chrs```     |     character vector of chromosome names
```folderpath```     |     path to mediation results folder
```covar```     |     covariates character variable, separate covariates with +
```outcome```     |     outcome variable string
```simulations```     |     number of simulations to run

## Examples

```r 
 mediation_table_allchr_function()
 ``` 

# `mediation_table_chr`: Mediation Table Chromosome

## Description


 Create a table of mediation results for all peak-SNP matches in a chromosome


## Usage

```r
mediation_table_chr(matches, med.res.data, covar, outcome, simulations)
```


## Arguments

Argument      |Description
------------- |----------------
```matches```     |     SNP-peak matches dataframe for a chromosome
```med.res.data```     |     mediation data
```covar```     |     covariates string, separate covariates with +
```outcome```     |     outcome character variable
```simulations```     |     number of simulations to run

## Examples

```r 
 mediation_table_chr_function()
 ``` 

# `transpose_readcount`: Transpose Readcount

## Description


 Transpose ChIP-seq Reacount dataframe and match project id


## Usage

```r
transpose_readcount(readcount)
```


## Arguments

Argument      |Description
------------- |----------------
```readcount```     |     ChIP-seq readcount dataframe

## Examples

```r 
 transpose_readcount_function()
 ``` 

