# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub
#install.packages('devtools')
#install.packages("dplyr")

# Install "fueleconomy" package from GitHub
#devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
#require(fueleconomy)
#library(fueleconomy)
#library(dplyr)


# Which Accura model has the best hwy MPG in 2015? (without method chaining)
View(vehicles)
test1 <- filter(vehicles, make == 'Acura')
test2 <- filter(test1, year == 2015)
test3 <- filter(test2, hwy == max(hwy))
select(test3, model)
# Which Accura model has the best hwy MPG in 2015? (nesting functions)
test4 <- select(filter(
  filter(vehicles, make =='Acura' && year==2015),hwy == max(hwy),model))

# Which Accura model has the best hwy MPG in 2015? (pipe operator)
test5 <- filter(vehicles, make == 'Acura',year==2015) %>%
  filter(hwy == max(hwy)) %>%
  select(model)

### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
