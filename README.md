# Course Project for Getting and Cleaning Data

## About the project

This GitHub repository contains all the necessary files to run the scripts properly, including the UCI dataset.

## Important files

- **run_analysis.R** is the actual script for cleaning the original dataset and generating the summary dataset. It also includes a helper function to send the summary to a TXT file.
- **summary.txt** is the TXT output of the summarized dataset.

## Running the code

Copy the contents (unzipped) of the `UCI HAR Dataset` folder from the ZIP file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into the working directory.

The **run_analysis.R** script contains two functions, the first one reads and transforms the UCI dataset into a summarized Data Frame. The second sends the output of the first function to a TXT file whose name is specified by the user.

See the following execution example from the RStudio console.

```R
> source('../courseprojectGCD/run_analysis.R')
> summarized <- run_analysis()
> head(summarized)

Source: local data frame [6 x 88]
Groups: Activity

  Activity Subject tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z tGravityAcc-mean()-X tGravityAcc-mean()-Y
1  WALKING       1         0.2773308       -0.01738382        -0.1111481            0.9352232          -0.28216502
2  WALKING       2         0.2764266       -0.01859492        -0.1055004            0.9130173          -0.34660709
3  WALKING       3         0.2755675       -0.01717678        -0.1126749            0.9365067          -0.26198636
4  WALKING       4         0.2785820       -0.01483995        -0.1114031            0.9639997          -0.08585403
5  WALKING       5         0.2778423       -0.01728503        -0.1077418            0.9726250          -0.10044029

> write_txt("myFileName") ## Search for myFileName.txt in your working directory.
```

## How does the script work?

- The first of all, all dataset files are read into individual Data Frames.
- Then, those individual dataframes are column and row-binded into a single complete Data Frame as follows:

Feature names from `features.txt` | Subject | Activity
--- | --- | ---
X_train | subject_train | y_train labeled with `activity_labels.txt`
X_test | subject_test | y_test labeled with `activity_labels.txt`

- Next, Subject and Activity are transformed into factors and labeled using the activity_labels.txt.
- After that, duplicated column names are removed. This allows using **dplyr's** select properly.
- Next, only 'mean' and 'std' columns along with Activity and Subject are stored from the 'without duplicates' Data Frame into the final_dataset variable.
- Finally, the data is grouped by Activity and Subject and summarized with **dplyr** using the `mean` function.
