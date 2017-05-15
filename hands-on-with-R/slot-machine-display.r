slot_display <- function(prize) {
  
  # extract symbols
  symbols <- attr(prize, 'symbols') # example 'B' '0' 'B'
  
  # collapse symbols into single string
  symbols <- paste(symbols, collapse = ' ') # example 'B 0 B'
  
  # combine symbol with prize as a regular expression
  # 'n is regular expression for new line (i.e return or enter)
  string <- paste(symbols, prize, sep = '\n$') # example 'B 0 B/nS0'
  
  # display regular expression in console without quotes
  cat(string)
}

slot_display(one_play)

slot_display(play())

rep(slot_display(play()), 100)
