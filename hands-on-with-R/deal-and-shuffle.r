# Dealing cards by extracting rows
deal <- function(cards) {
  cards[1, ]
}

# Selecting different values from the cards deck
deck2 <- cards[1:52, ]
head(deck2)

deck3 <- cards[c(2, 1, 3:52), ]
head(deck3)

# Shuffle cards by using retrieving rows at random
shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  new_deck <- cards[random, ]
  new_deck
}

# Testing the shuffle function
deal(cards) # card A

new_deck <- shuffle(cards)

deal(new_deck) # card B
