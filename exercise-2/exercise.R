# Exercise 2: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1

install.packages("dplyr")
# Install devtools package: allows installations from GitHub
install.packages('devtools')

#Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
require(fueleconomy)
library(fueleconomy)
library(dplyr)

# You should have have access to the `vehicles` data.frame

View(vehicles)
# Create a data.frame of vehicles from 1997
veh <- filter(vehicles,year %in% 1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(year)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
veh2 <- filter(vehicles,drive %in% '2-Wheel Drive' & cty > 20)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
id <- filter(veh2, hwy == min(hwy))

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
# pipe with one line
want <- function(year,make) {
  filtered <- filter(vehicles, make == my_make, year == my_year) %>% 
    filter(hwy == max(hwy))
  return(filtered)
}

# What was the most efficient honda model of 1995?


