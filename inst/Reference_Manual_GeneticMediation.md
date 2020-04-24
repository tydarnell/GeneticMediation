

<!-- toc -->

April 24, 2020

# DESCRIPTION

```
Package: GeneticMediation
Type: Package
Title: Genetic Causal Mediation
Version: 0.1.0
Authors@R: person("Ty", "Darnell", email = "tydarnell@gmail.com",
  role = c("aut", "cre"))
Maintainer: Ty Darnell <tydarnell@gmail.com>
Description: Causal mediation analysis package for ROSMAP study data.
    Provides functions for cleaning, matching and preparing the data for
    causal mediaiton analysis and conducting the causal mediation analysis.
License: GPL-3
Encoding: UTF-8
LazyData: true
RoxygenNote: 7.1.0
Imports: data.table, IRanges, mediation, readr, stats
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
```path```     |     path for new folder

# `match_all`: Match All Chromosomes

## Description


 Match SNPs and Peaks in all chromosomes,
 save as "data/matches.csv"


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

# `med.res_spc`: SNP-Peak-Clinical Mediation Data Prep

## Description


 Prepare a chromosome of SNP-Peak-Clinical data for mediation analysis
 and save as "data/med.res/res_ `chr` .RData"


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
 and save as "data/gene.res/res_ `chr` .RData"


## Usage

```r
med.res_spg(chr, med.data, matches)
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

