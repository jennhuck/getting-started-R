# Getting Started with R
# Jennifer Huck, Data Librarian, UVA Library
# Spring 2023

# Intro to R: Goals for our Workshop--------------------------------------------
  
# These are the goals for today's workshop:

# -   Understand the features of R
# -   Orient yourself to R and RStudio
# -   Learn how and why to save code in scripts
# -   Understand the basics of objects, functions, and indexing
# -   Understand packages, including installing and loading
# -   Learn about working directories and file paths
# -   Understand the basics of working with data: load, explore, and save data
# -   Learn best practices for using R scripts and notebooks, using data, and
#     RStudio Projects
# -   Know where to look for help and where to learn more about R
# 
# The intended audience is beginner-level, with no previous experience
# using R.
# 
# We will use data about Albemarle County homes.


# Orientation to R and RStudio--------------------------------------------------

# R is the underlying statistical computing environment. You can think of
# this like the engine of a car. That makes RStudio like the dashboard.
# Basically, RStudio makes it easier to use R because it is easier to run
# and execute code. After you install R and RStudio, you only need to run
# RStudio.

## A quick tour of RStudio Panes----

# RStudio shows four panes by default. The two most important are the Script 
# Editor (top left) and the Console (bottom left). The panes on the right have 
# multiple parts. The upper right is usually set to Environment, while the lower 
# left has a lot of helper panes and you are likely to frequently switch between 
# them.

## The Console----

# The Console is where you can enter commands that R will execute, but R
# will not save this code in an organized way. You might want to use the
# console to enter commands that you want to test out or commands that you
# know you do not want to save.
# 
# Try typing this into the console, and press return:
# 
# 20^2


# Simple Scripts, Comments, Script Organization---------------------------------

# Scripts save your work for future analysis. Scripts are an essential part
# of reproducibility, either for collaborators or, crucially!, your future self. 
# You should rely on them rather than clicking through a graphical user interface, 
# because scripts save your work process in a way that clicking does not.  
# Reproducibility practices might have a little bit of up-front cost, but I 
# promise it makes your life easier in the long run.
# 
# You should use lots of comments when you write your own scripts! Do
# yourself a favor, and leave comments for the future version of yourself.
# 
# Preface comments with a hashtag: #
#
# You can see here that all the narration for the workshop is commented out.
#
# Also notice the gutter (bottom of script pane): you can use four dashes after 
# a comment (-) to organize the script. 
#
# How to open a new script file: Go to File...new File...R Script. 

# Basic R operations------------------------------------------------------------

# Let's get some output from R starting with some simple math.

# Here, the plus sign is the 'operator'. Operators are symbols that
# represent some sort of action.

# Press *CTRL+Enter* to run a line at a time. You can also click on the Run icon 
# in upper right of the script pane.

2+8/2

# Let's try that again, but slightly different:

(2+8)/2 

# You can also highlight only some code, and press Ctrl+Enter (Win/Linux) or 
# Cmd+Return (Mac) to run the highlighted section.

# Highlight and run (2+8) above.

# Notice that the Console shows a > (right-pointing carrot) when it is ready to 
# accept commands. 

#This time, try highlighting and running only (2+8 above, intentionally leaving 
# out )/2. You will see a + (plus sign) in the console. The + tells you R is 
# waiting for more input. You can click into the console and press ESC, or you 
# can highlight and run the rest of the line.

# Creating objects-------------------------------------------------------------

# It is more useful and interesting to assign values to objects. We create
# an object by using this form: object <- value. Say in your head
# "object gets value". We are using the assignment operator: <- Use <-
# and not =.
# 
# Tip: Keyboard shortcut: For assignment operator <- use ALT+- (for Windows) or 
# OPTION+- (for Mac). That is, hold the ALT/OPTION key, then press the - key 
# (minus sign key).

# Let's make some objects for housing square feet.

cottage <- 1000    # Say "cottage gets one thousand"; verify in environment
(mansion <- 10000) # putting parenthesis around the call prints the value of 
                   # mansion
house <- 500

## Code-along: autocomplete----

# Take advantage of RStudio autocomplete facility. Make a code chunk, then type 
# the first 3 letters of cottage, press Tab or Enter, then run.


## More objects----

# I will put parentheses around the code to print to the console/chunk
# output. I am only doing this because it is a workshop situation and I want to 
# display the output. You don't have to do it like this every time.

# Use *Ctrl+Enter* (Win/Linux) or *Cmd+Return* (Mac) to run lines:

Cottage <- 4000 # R is case sensitive, so be careful with your upper/lowercase

(condo <- 3000) # Put parenthesis around the call to print to the console

condo <- 2000   # We can re-assign objects
condo           # Verify by looking in the Environment or printing to console by
# typing the name of the object

cottage / 2       # We can do arithmetic with R objects
cottage + mansion # Simply prints to console, we aren't saving this as an object 
# in the Environment

two_homes <- cottage + mansion  # Save our arithmetic as a new object

rm(Cottage)       # Remove an object

# Now type Cottage into the console.
# We get an error, because the object no longer exists


## Your turn 1----

# Do these exercises in order!

# 1. A cottage costs $100.  Create an object labeled `cottage_cost` that gets 
# the value `100`.  (Do not include the dollar sign.)


# 2. How much does the cottage cost in Euros?  Use `cottage_cost`, multiply by 
# `0.8`, and save the object as `cottage_euros`.


# 3. Whoops - the cottage is actually $200 - twice what we thought.  Update 
# `cottage_cost` to `200`. Update `cottage_cost` in Question 1 to 200, and run. 
# (Don't run anything else.)

# 4.  What do you think the current content of the object cottage_euros is? 
# Is it 80 or 160?


# Functions---------------------------------------------------------------------

# Functions are like verbs. Objects are like nouns. Functions allow you to
# do things with your objects.
# 
# Functions get one or more inputs called arguments. Functions often
# return a value.
# 
# Let's try a very simple function: `sqrt()`

sqrt(100)

# The value 100 is given to the sqrt() function, the sqrt() function
# calculates the square root, and returns the value.
# 
# The sqrt() function is very simple because it takes only one argument.
# 
# Let's try a function that can take multiple arguments: `round()`

round(3.14159)

# The default is to round to the nearest whole number. If we want to round
# to more digits, we can get more info on the round() function, by using
# args(round) or looking at the help page ?round

?round

# From the round() documentation, we see that if we want a different number of 
# digits, we can type digits=2, or however many we want.

round(3.14159, digits = 2)

## Vectors and Data Types----

# A vector is the most common and basic data type in R, and is pretty much the 
# workhorse of R. A vector is composed of a series of values, frequently as 
# numbers or characters. We can assign a series of values to a vector using the 
# c() (combine) function. For example we can create a vector of the age of 
# homes and assign it to a new object `age`:

# Numeric vector:
age <- c(15, 62, 39, 4) 
age

# A vector can also contain characters. For example, we can have a vector of the 
# types of heating in a home called `heating`.

# Character vector:
heating <- c("furnace", "radiator", "heatpump")
heating

# The quotes around “furnace”, etc. are essential here. Without the quotes R 
# will assume there are objects called `furnace`, `radiator`, and `heatpump`. As
# these objects don’t exist in R’s memory, there will be an error message.

# Character vector missing the quotes:
  
heating <- c(furnace, radiator, heatpump) # These objects do not exist, so you 
# get an error

# There are many functions that allow you to inspect the content of a vector. 
# `length()` tells you how many elements are in a particular vector:
  
length(age)
length(heating)

# An important feature of a vector, is that all of the elements are the same 
# type of data. The function class() indicates the class (the type of element) 
# of an object:

class(age)
class(heating)

## Subsetting vectors----

# Indexing vectors - use brackets to reference elements in a vector. 

# R starts counting from 1.

age[c(1,3)]      # pulls 3rd element
heating[2:3]   # pulls 2nd-3rd elements
heating[c(1,3)]    # pulls non-sequential elements

## Conditional subsetting----
# Another common way of subsetting is by using a logical vector.

age > 30

## Your turn 2----

#1.  Pull the second element from the numeric vector age (above).


#2.  Create a character vector `names` consisting of 4 components: Jenn, Clay, Jacob, and David 


#3.  Pull the 2nd and 4th elements of the vector you created in step 2.


# Clear our workspace----------------------------------------------------------

# Let's clear the objects we just made from our workspace since we don't
# need them anymore. Try the remove function (below), or click the Broom
# icon in the Environment console.

rm(list = ls())

# Starting with Data: Directories, Paths, and Import----------------------------

# In this section we will cover:

# * where R looks for files (working directory),
# * the various ways to set a working directory, including RStudio Projects,
# * how to move around within a directory (relative paths),
# * and how to import data that lives in the cloud.
 
# We are covering all of these topics so we can import our data.

## What is a Working Directory? What is the best way to set one?----

# R always has a working directory set. The working directory is where **R
# looks for your files**, that is, where it looks for your scripts and
# data. R will look for other files and directories by starting at the
# root of your working directory. The working directory can be any
# directory (aka folder) -- it doesn't have to be the same folder where
# you installed R.

## View Your Working Directory----

# R always has a working directory set. Get your working directory:

getwd()

# Note that you can also see the working directory listed at the top of
# the Console.

# You will need to change the working directory when you want R to look for 
# files elsewhere. That is, you have to "set" the working directory.

## Setting a working directory the hard coded way----

# Here is an example of setting your working directory using the `setwd()` 
# function.

setwd("C:/Users/jah2ax.ESERVICES/Box Sync/_R/workshops/intro_R")

# Note that this line of code will *not* work for you. Actually, this line of 
# code doesn't even work for me anymore - I moved my files, so this hardcoded 
# working directory line is no longer correct, so it doesn't work now.

# As much as possible, it is best to avoid setting your working directory this 
# way.

# There is a better way: RStudio Projects.

## Create a RStudio Project----

# RStudio Projects are great because they automatically set your working
# directory to the top level of your project directory (folder). They also
# give you a fresh "environment" which we will explain in a moment.

## Follow-along: create a R Project----

# Create a project by selecting the R Project icon (upper right corner) or
# File...New Project...Existing Directory...select the directory (folder)
# where this R script is saved. 

# In this example, our folder is called "getting-started-R" and we should also 
# see the folders "data-raw" and "scripts" in the viewer.

# Our current view of RStudio will go away, the project will be opened (verify 
# by looking at the RStudio Project icon in the upper right), and we will need
# to re-open our getting_started_R.R script.

# Loading packages--------------------------------------------------------------

# We need more verbs! R comes pre-loaded with several packages, but one of
# the cool things about R is that people develop new functions all the
# time. Those functions are distributed in packages. CRAN is the best
# place to find packages because they are validated. (You can also find
# packages on GitHub, but "buyer beware" - these might not work or might
# not have been updated to keep pace with new versions of R.)

# Let's load a package.

# Recall that you installed the tidyverse package before the workshop.
# Remember, you only *install* a package once, but you must *load* it for
# every new R session. Think of it like a lightbulb that you install
# once, but switch on every time you need it.

# Let's load our first package: tidyverse

library(tidyverse) 

# Note the message that we see in the Console. You should see what
# packages were loaded (ggplot2, tibble, etc.) and conflicts. 

# You should also see 2 conflicts:

# -   x dplyr::filter() masks stats::filter()
# -   x dplyr::lag() masks stats::lag()

# Those are okay! You can read that as: The filter command in the dplyr
# package masks the filter command in the stats package.

# If you see a Warning Message in red text below the conflicts, that is an
# error you need to fix.

# Import homes data: Absolute vs. Relative Paths--------------------------------

# We will use real data about homes in Albemarle County. But how do we import it?

# We need to point R to where the dataset is stored. Recall what we said
# about setting the working directory with hard-coded paths: they break
# when you move your files, and basically never work for other people.

# A hard-coded path pointing to our dataset in Windows might look like this:

# C:/Users/jah2ax.ESERVICES/Box Sync/_R/workshops/intro_R/data-raw/albemarle_homes_2023.csv

# On a Mac it might look like this:

# ~/Users/jah2ax.ESERVICES/Box Sync/_R/workshops/intro_R/data-raw/albemarle_homes_2023.csv

# Instead of using a hard-coded path, we will use a *relative* path. That
# means that we start from the working directory and move around from
# there.

# **Before** we do this, let's take a quick look at the files we want to use in 
# the File Explorer pane (lower right). You can see that the top level folder is 
# `getting-started-R`. That folder contains all the other folders and files for 
# our project. We also have `data-raw` that has our csv file. Then there is 
# `scripts` which contains this script and the answer key. 

# I'll repeat: An RStudio Project automatically sets our working directory to the 
# top level of our project directory (folder). In this case, that is the 
# `getting-started-R` directory (folder).

# Read in data
homes <- read_csv('data-raw/albemarle_homes_2023.csv') 

## Another way to import data----
# If your data lives in the cloud, you can also use URLs to retrieve your data. 
# You do not need to have the data stored locally in order to import it into R's 
# memory.

# We can import the 2022 Albemarle homes data directly via a URL. 
homes_2022 <- read.csv("https://github.com/uvastatlab/phdplus2022/raw/main/data/albemarle_homes_2022.csv")

## What is an Environment?----

# Your environment includes your objects saved into memory and any loaded 
# packages. RStudio Projects give you a fresh "environment." That basically 
# clears your workspace by removing any objects, and also clears any packages 
# that you may have loaded previously.

# It's a good practice to start, and frequently re-start, with a fresh
# environment.

# Evaluate Data, Part 1---------------------------------------------------------

# Get an overall view:

homes        # print to console
View(homes)  # view spreadsheet-style data viewer
             # You can also click on "homes" in your Environment pane

# Size:
nrow(homes)  # number of rows
ncol(homes)  # number of columns
dim(homes)   # number of rows and number of columns (the DIMensions of the object)

# Content (print out a few rows, either first or last rows):
# Type: head...open parenthesis...homes
# Type: tail...open parenthesis...homes



# Column (aka variable) names:
# Type: names...open parenthesis...homes


# Summaries:

# `summary()`: Get a quick statistical summary of the dataset. Notice that
# some variables get a frequency count while others get a six number
# summary (e.g., mean, median).

# Type: summary...open parenthesis...homes


# `str()`: View structure of the homes data. You can also view the
# structure by clicking on the little blue arrow next to the object in
# your Environment.

# Type: str...open parenthesis...homes

# 
# `glimpse()`: Returns the number of columns and rows of the tibble, the
# names and class of each column, and previews as many values will fit on
# the screen. glimpse() is from the dplyr or tibble package, while
# everything else in this section is from base R.

# Type: glimpse...open parenthesis...homes


## Factors: categorical data----

# Notice in our summary() and str() print outs, we see a lot of data that
# looks like character data, but is not really character. It's categorical. 
# Let's focus on `condition`. Here, we have a handful of categories: average, very
# poor, fair, etc. We should convert those numeric variables into categorical ones.

# In R, categorical data are called factors. Factors are a class of data,
# just like numeric or character data.

# Here is a quick (lazy!) way of importing all character (string) data as factors:

# set up factors
homes_factors <- read.csv("data-raw/albemarle_homes_2023.csv", stringsAsFactors = TRUE)
str(homes_factors)

# Compare str(homes) and str(homes_factor).  The character data in 'homes_factors' 
# are now Factors with Levels. Looking at 'condition' again, it shows "Factor 
# w/7 levels". Also notice the numbers that follow. Factors are stored in memory 
# as integers, and the integers have associated "labels". 

#Investigate factors for condition:

levels(homes_factors$condition)

# Check out tidyverse's forcats package for more details on how to manage 
# factors.

## Evaluate Data, Part 2----

# Use $ to reference elements in a data frame (aka indexing):
  
summary(homes$lotsize)  # Summary of lotsize variable

# Type: mean...open parentheses...homes...dollar sign...lotsize


# **Use logical vectors to query data:**
  
# Note: 
# - TRUE is stored as 1 
# - FALSE is stored as 0

# number of homes over $1,000,000
sum(homes$totalvalue > 1e6) # 1e6 is fast way of writing 1,000,000
                            # (i.e., 1 followed by 6 zeros) in R

# For each observation, if the total value is over $1,000,000, R considers that 
# TRUE, which is stored as a 1.  Then R sums up all those 1's with the sum() 
# function.) 

# proportion of homes over $1,000,000 (mean of 0s and 1s as a proportion of 1s)
mean(homes$totalvalue > 1e6)

# **Use `table()` to create tables:**

# count of homes by hs district
table(homes$hsdistrict)

# count of homes by cooling (central air) status
table(homes$cooling)

# table of homes in hsdistrict by cooling status
# the first argument fills in the rows, the second fills in the columns
table(homes$hsdistrict, homes$cooling)

## Beware of missing data----

# Missing data is represented by NA.

sum(is.na(homes$bedroom)) # number of observations with missing bedroom data.

# Many functions will return NA if the data include missing values.

mean(homes$bedroom)

# You can add the argument `na.rm = TRUE` to ignore missing values.

mean(homes$bedroom, na.rm = TRUE)

## Your Turn 3----

# 1.  Print the last rows of the `homes` dataframe with the `tail()` function. 
# Can you print the last 10 lines of rows?


# 2.  Use the function median() to calculate the median of the number of full 
# baths (fullbath) in 'homes'


# 3. Create a table that includes middle school district (msdistrict) as rows, 
# and condition as columns.


# 4.  Fix these commands so they run correctly:
median(homes$Bedrooms, na.rm = TRUE)
Mean(homes$landvalue)

# Filling out our Project Directory---------------------------------------------

# This part is not specific to R or RStudio. This section is about good data 
# management and what that might look like in an R project.

# Using a consistent folder structure across your projects will help keep
# things organized and make it easy to find your files in the future.

## Create a chart----

# Let's create a quick chart.

# bar chart of homes total value 
ggplot(homes, aes(x = totalvalue)) +  
  geom_histogram()                     

# (Don't worry about this code! Save your questions for the data viz workshop!)

# In the Files pane (lower right quadrant in R Studio), verify that the folder 
# displays your working directory (`getting-started-R`)...click on "New 
# Folder" (icon that looks like a folder with a plus sign)...create a new folder
# called...output. (The new folder might not be visible in the Files pane right 
# away.)

# save figure 
ggsave("output/total_value.png")

# Verify the image file saved in `output` by clicking on that folder. You can 
# insert the .png file into a Word doc, etc.

## Save our data----
  
# Let's save our data as a .Rds file, so we can import the data again later.

# (I admit, this isn't a perfect example, since we didn't make a lot of 
# changes to the raw dataset.  We will use our homes_factors since we took the 
# time to convert the strings to factors.)

# In the Files pane (lower right), verify that the folder displays the contents 
# of your working directory folder (getting-started-R)...click on "New Folder"
# ...create a new folder called...data-processed. (The new folder might not be 
# visible in the Files pane right away.)

# Save your homes_factors object as an Rds file.
saveRDS(homes_factors, file = "data-processed/homes_factors.Rds")

# It is a good idea to keep our raw data separate from our processed data. The
# raw data is precious - never save over it. The processed data is disposable - 
# as long as we have our raw data and scripts, we can always recreate the 
# processed data. The same is true of our output (tables, charts) - it is also 
# disposable as long as we have our raw data and scripts. 

# This is a helpful way to keep your research project files organized.

## Create an R Notebook----

# This file is an R script. Another option for saving code is an R Markdown 
# file. It combines markdown, a plain text formatting syntax, and R code. When 
# you execute R code within the notebook, the output appears beneath the code.

# Let's test out how this might work for our project.

# In the Files pane (lower right), verify that the folder displays the contents 
# of your working directory folder (getting-started-R)...click on "New Folder"
# ...create a new folder called...docs. (The new folder might not be 
# visible in the Files pane right away.) 

# Then go to File...New File...R Notebook. Give the file a name and save it in 
# the `docs` folder.  

## Important side note about relative paths in R Notebooks----
# Note that the working directory for R code chunks in R Notebooks is the 
# directory (aka folder) that contains the R Notebook (.Rmd) file. In this case, 
# that folder is the `docs` directory/folder.

# Use `..` (two periods) to move from the `scripts` folder up to the 
# `getting-started-R` folder. From there, R can find the `data-raw` folder.

# Copy and paste the following 6 lines of code into a code chunk in the R Notebook:

# import data
homes <- read_csv('../data-raw/albemarle_homes_2023.csv') 

# visualize totalvalue
ggplot(homes, aes(x = totalvalue)) +  
  geom_histogram()

# Save the R Notebook. Review the HTML file that saves into your `docs`. All of 
# your code and output (tables, charts) can now be interwoven with your 
# narrative analysis. No more losing track of tables and charts with cut and paste. 

# Getting help------------------------------------------------------------------

# We hope that if you need help with R, you come visit someone from the 
# instructional team at UVA Library or the Health Science Library! If you would 
# rather get help online, you can absolutely do that at places like 
# Stack Overflow, GitHub, and community.rstudio.com. Note that "getting a clear, 
# helpful response on these forums—or from any resource—depends in large part on 
# asking a clear, helpful question. Help the helpers by including a reprex (a 
# REPRoducible *EXample) when asking a code question." 

# Learn how to create a reprex at Jacob Goldstein-Greenwood's StatLab blog post 
# "Ask Better Code Questions (and Get Better Answers) With Reprex" 
# (https://data.library.virginia.edu/ask-better-code-questions-and-get-better-answers-with-reprex/).

# Keep learning----------------------------------------------------------------- 

# - Come to our other UVA Library Research Data Services R workshops 
# https://data.library.virginia.edu/training/#R 
# or a workshop offered by UVA Health Science Library: 
# https://cal.hsl.virginia.edu/calendar/data?cid=5619&t=g&d=0000-00-00&cal=5619&ct=29775&inc=0

# - Reach out to our StatLab for one-on-one consultation or visit drop-in hours: 
# https://data.library.virginia.edu/statlab/ 

# - For self-led learning, check out SAGE Campus's Introduction to R, a beginner-level, 20 hour course. http://proxy01.its.virginia.edu/login?url=https://classroom.sagepub.com/ 