sample_1 = c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04, 79.97, 80.05, 80.03, 80.02, 80.00, 80.02)
sample_2 = c(80.02, 79.94, 79.98, 79.97, 79.97, 80.03, 79.95, 79.97)

t_test <- function(A, B) {
  
  sample_1_length <- length(A)
  sample_1_mean <- mean(A)
  sample_1_var <- var(A)
  
  sample_2_length <- length(B)
  sample_2_mean <- mean(B)
  sample_2_var <- var(B)
  
  pooled_var <- sqrt(((sample_1_length - 1) * sample_1_var + 
                       (sample_2_length - 1) * sample_2_var) /
                       (sample_1_length + sample_2_length - 2)
                       )
  
  result = (sample_1_mean - sample_2_mean) / 
    (pooled_var * sqrt(1/(sample_1_length) + 1/(sample_2_length)))
  
  print(result)
}





