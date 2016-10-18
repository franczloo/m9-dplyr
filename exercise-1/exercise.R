# Exercise 1: Data Frame Practice

# Install devtools package: allows installations from GitHub
#install.packages('devtools')

# Install "fueleconomy" package from GitHub
#devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
require(fueleconomy)
library(fueleconomy)
# You should have have access to the `vehicles` data.frame


# Create a data.frame of vehicles from 1997
veh <- data.frame(vehicles[vehicles$year == 1997,])

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(veh$year)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
wheelVeh <- vehicles[vehicles$drive =='2-Wheel Drive' & vehicles$cty >= 20,]

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
worst <- wheelVeh$id[wheelVeh$hwy == min(wheelVeh$hwy)]

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year


# What was the most efficient honda model of 1995?


