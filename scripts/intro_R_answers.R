# Getting Started with R - workshop answers
# Fall 2021
# Jennifer Huck
# UVA Library

# Answers for intro_R-notebook.Rmd "Your Turn" Exercises

# Your turn #1------------------------------------------------------------------

# Do these exercises in order!

# 1. A cottage costs $100.  Create an object labeled cottage_cost that gets the 
# value 100.  (Do not include the dollar sign.)
cottage_cost <- 100

# 2. How much does the cottage cost in Euros?  Use cottage_cost, 
# multiply by 0.8, and save the object as cottage_euros.
cottage_euros <- cottage_cost * 0.8

# 3. Whoops - the cottage is actually $200 - twice what we thought.  
# Update cottage_cost to 200.
cottage_cost <- 200

# 4. What do you think the current content of the object cottage_euros is? 
# Is it 80 or 160?

# It is still 80, because even though we updated cottage_cost, we did not update 
# cottage_euros calculation (line 18)

# Your turn #2------------------------------------------------------------------

# 1. Pull the second element from the numeric vector cost (above).
cost[2]

# 2. Create a character vector consisting of 4 components. Remember the keyboard
# shortcut for the assignment <-  operator: ALT+- or OPTION+-
instructors <- c("Jenn", "Clay", "Erich", "Jenny")

# 3. Pull the 2nd and 4th elements of the vector you created in step 2.
instructors[c(2,4)]

# Your Turn #3------------------------------------------------------------------

# 1. Print the last 8 lines of 'homes'
tail(homes, 8)

# 2. Use the function median() to calculate the median of the number of full 
# baths (fullbath) in 'homes'
median(homes$fullbath, na.rm = TRUE)

# 3. Create a table that includes middle school district (msdistrict) as rows, 
# and condition as columns.
table(homes$msdistrict, homes$condition)

# 4. Fix these commands so they run correctly:
median(homes$bedroom, na.rm = TRUE)
mean(homes$landvalue)