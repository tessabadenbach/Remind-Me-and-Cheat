
# clean environment
rm(list=ls())

# load required packages
library(ggplot2)
library(dplyr)
library(tidyverse)
library(ggthemes)
library(plotly)
library(devtools)


# Function 1: Remind me

my_friends <- c("anna: 02.11.1997", "lenny: 13.05.1999", "ben: 24.07.1998",
                "theo: 16.03.2000", "mary: 30.08.1996", "elisa: 04.04.1998")

remind_me <- function(){
  message <- paste(my_friends, collapse="\n")
  return(message)
}

cat(remind_me())


# Function 2: Cheat

cheat <- function(x){
  r_solutions <- matrix(NA, nrow = 18, ncol = 1)
  r_solutions[1] <- "
                      set.seed(123)
                      x <- rnorm(1000)
                      y <- runif(1000)
                      z <- rpois(1000, 3)

                      data <- data.frame(values = c(x, y, z),
                                       group = c(rep('x', 1000),
                                                 rep('y', 1000),
                                                 rep('z', 1000)))
                      boxplot(values ~ group, data)"
  r_solutions[2] <- "
                      schipholtemp <- '~/Desktop/schiphol_data.csv'
                      content <- read.csv(schipholtemp, sep = ',')
                      print(content)


                      # Create scatterplot
                      x <- content$DATE
                      y <- content$TAVG
                      plot(x, y, main = 'Average Temperature Schiphol', xlab = 'time', ylab = 'temperature')"

  r_solutions[7] <- "
                     library(ggplot2)
                     ggplot(Orange, aes(x=age, y=circumference)) +
                        geom_smooth(method = lm)"
  r_solutions[10] <- "
                      library(plotly)
                      data('iris')
                      head(iris)
                      #Create plot
                      fig <- plot_ly(iris, x = ~Petal.Width, y = ~Petal.Length, z = ~Sepal.Width, color = ~Species)
                      fig <- fig %>% add_markers()
                      fig <- fig %>% layout(scene = list(xaxis = list(title = 'Petal.Width'),
                                                         yaxis = list(title = 'Petal.Length'),
                                                         zaxis = list(title = 'Sepal.Width')))

                      fig"
  r_solutions[15] <- "
                      # This function checks whether the element w is an element of x in the function.
                      # In this case, it checks whether 'apple' is an element of 'i bought two bananas and an apple'
                      # If you have w = 'orange' the function will not return anything.
                      # The  strsplit splits up the string x by blank spaces. Then the for loop goes through every word
                      #of the string and checks whether it corresponds to w. If it does, as in the case of 'apple',
                      #then the function returns true.

                      # Reasons why this is bad coding style:
                      # 1: The variable names are not clear. It would be better to have descriptive variable names,
                      # e.g. the v in line to could be 'string_contains' to make clear what the function does

                      # 2: The for loop and if branch are in the same line. If would be better to have section breaks and
                      # indent the if branch for better readability.

                      # 3: It's bad coding style to name the function v and then name a variable within the function v as well.
                      #This makes the code very confusing.

                      # 4: It is bad that the function returns nothing if the result is FALSE.
                      # It would be better to include a 'return(FALSE)' in the end."


  print(paste("This is the solution to exercise", x))
  return(cat(r_solutions[x]))
}


