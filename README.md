---
title: "The course project for Getting and Cleaning Data"
author: "Jing Huo"
date: "February 11, 2016"
output: html_document
---

This file explains what's done in the file run_analysis.R.

1. Load subjectID, activity, and measurements for both training and testing data from the files.

2. Combine the training and testing measurements into one data frame.

3. For the measurement variables, only keep those with mean or std of the measurements.

4. Replace the numbers in the activity column with descriptive activities.

5. Combine them into one data frame and save as tidydata.txt.
