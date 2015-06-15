# Peer Assignment
Peer assignment for the Getting and Cleaning Data coursera class

## Get the data
Before the main R script can be run, you need to get the data using the following steps:

- download the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
- unzip the file in the root of the repository. This will create a folder named `UCI HAR Dataset`.

after those preparatory steps, the `run_analysis.R` file should run without issues.

The data is loaded into a data frame named `wearableComputing`.

## Submission summary data

The `prepare_summary.R` script generates the table for the submission and creates a text file `submission.txt` in the repository root. It can only be run, after the `run_analysis.R` has completed.