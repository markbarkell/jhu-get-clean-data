# Programmer: Mark Barkell
# Purpose: Main entry point if using Microsoft Visual Studio 2015 R Tools for development. 

# The Getting And Cleaning Data Course require the name of the program to be run_analysis.R
# Microsoft Visual Studio 2015 with R Tools uses this script.R to source execute the 
# R project.  So, this script.R just calls the name required by the course instructions.
# It may be possible to make that button in Microsoft Visual Studio just point to the run_analysis.R,
# but I have not yet found out how.
source("../run_analysis.R")