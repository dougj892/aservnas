
This repo contains code used to perform the analysis for the paper "Assessing the Assessments: Taking Stock of Learning Outcomes Data in India" published in the International Journal of Educational Development. 

We apologize for the messiness of the code, much of which was written while one of the authors was learning R.

# Preliminary steps required to run code locally

## Download IHDS data
Prior to running these scripts, users must first download the stata version of the individual level dataset from IHDS round 2. This dataset can be downloaded from [this page](https://www.icpsr.umich.edu/web/ICPSR/studies/36151?q=india+human+development+survey&searchSource=icpsr-landing#). The name of the dataset should be "36151-0001-Data.dta". A quick overview of how to use IHDS data can be found [here](https://www.dougjohnson.in/post/getting-started-with-ihds-data/).

Users don't need to download the ASER data as this data is automatically downloaded from a separate repo.

# Install R, RStudio, and all relevant packages

Users will need to install R, RStudio, and all relevant packages. R version 3.6 was used for this analysis but the code should work with R version 4.0.

# Modify local paths

Unfortunately, we weren't aware of the "here" package at the time we wrote this code (or, for that matter, that paths should always be set at the top of a script) so users will have to manually change all paths in the scripts to refer to local paths.


# Description of main analysis files

Analysis is broken up into three main R notebooks.

## ASER-and-NAS.Rmd

This notebook compares ASER, NAS, and IHDS data and generates figures 1 and 2 from the paper. 

## Estimate-effect-of-absence-from-IHDS.Rmd

This notebook calculates the effect of potential absence on IHDS scores and generates figure 3 from the paper.

## aser-variance-over-time.Rmd

This notebook performs most of the variance decomposition analysis for ASER scores and saves the output in csv format.

## ASER-variance-create_combined-output.Rmd

This notebook uses the output from the "aser-variance-over-time.Rmd" notebook to generate the figures showing the variance decomposition. 