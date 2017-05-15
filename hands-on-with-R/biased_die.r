roll <- function() {
  die <- 1:6
  names(die) <- c("one", "two", "three", "four", "five", "six")
  dice <- sample(die, size = 2, replace = TRUE,
                 prob = c(1 / 8, 1 / 8, 1 / 8, 1 / 8, 1 / 8, 3 / 8))
  sum(dice)
}

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

# using the probability argument
# creating a histrogram using ggplot
