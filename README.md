---
title: "README"
author: "CK"
date: "May 14, 2016"
output: html_document
---

## Getting and Cleaning Data - Course Project - (Coursera 2016) 


The assigment consists in getting a set of untidy data representing accelerometer and gyroscopicmeasurements for a Smartphone and performing R transformation on the Dataset provided in order to produce a tidy data set

#Assesment of the original Data Set Issues and corresponding Solutions
Issue 1- The Data Set is split into training data and test data. This is customary in Machine Learning algorithms or
regressions, so that a model can be built using training data and verified using test data

Solution1- This is roved to be a minor issu, since the traning and test data set were easy to merge ones one figures the inner structure of the data

Issue 2- The most important challenge with the original data set is that measurements, features, subjects and measured ativities are all scattered in separate files. For example the agglomerated accelerometric and gyroscopic data aqcuired from the sensors is in X_train and X_test (gathered from the Inertial data folder and functions applied to them). These files contain only the aqcuired numbers in a space delimted formats without any labels, variable names or headers. The structure is assumed based on the position of the numbers and the variables names and labels that should be added are in the Y_train or Y_test (for the activities), and the subjects (i.e. individuals carrying the Smart devices) in subject_train and subject_test. Much use of str(), head, and dplyr selections and filters were useful in peicing the numbers together. Once the structure of the files is understood, the "stitching" of the files boils down to applying R and dplyr transformations

Issue 3- The Coursera assigment required to isolate the measurements pertaining to means and stadard deviations of measured sensor data. 

Solution 3- This added a step applying regular expression gsub and grep type functions to extract only the columns that are associated with features pertaining to mean or std. In the end it was much better working with a smaller data set.

Issue 4- The assigments required that the tidy data be summarized by appying the mean over subjects and activities.

Solution 4- The dplyr library made this very easy. It was difficult for me performing this with only standard libraries without using dplyr. The latter proved extremely useful to perform the "group by" and "summarize" using the mean function feasible in two steps.

Issue 5- Making sure the resulting data is tidy

Solution 5- The resulting data set (that is better read with notepad++ rather than basic notepad on Windows computers) contains aggregated means of data. The rows contain the values for subject and activity and the pair of these define a unique observation in the data set (after applyingg the group by/summarize). Apart from the first columns (subject, and activity), the subsequent columns contain the feature names, namely the type of accelerometric or gyroscopic data acquired combined with what function the authors of the article/website have applied to it.


