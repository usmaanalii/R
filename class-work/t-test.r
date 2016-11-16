sample_1 = c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97, 80.05, 80.03, 80.02, 80.00, 80.02)
sample_2 = c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95, 79.97)

t_test <- function(s1, s2) {
  
  s1_length <- length(s1)
  s1_mean <- mean(s1)
  s1_var <- var(s1)
  
  s2_length <- length(s2)
  s2_mean <- mean(s2)
  s2_var <- var(s2)
  
  pooled_var <- sqrt( ( (s1_length - 1) * s1_var + (s2_length - 1) * s2_var ) /
                       (s1_length + s2_length - 2)
                    )
  
  result = (s1_mean - s2_mean) / 
    ( pooled_var * sqrt( 1 / (s1_length) + 1 / (s2_length) )
    )
  
  print(result)
}

# result

t_test(sample_1, sample_2)



