# Manually extracted values from PAML output
null_lnL <- -16419.358978
null_np <- 68
homo_lnL <- -16418.617538
homo_np <- 69
hominini_lnL <- -16416.079192
hominini_np <- 69
homininae_lnL <- -16417.612542 
homininae_np <- 69 
ape_lnL <- -16418.963933 
ape_np <- 69 

alts <- data.frame(
  model = c("homo", "hominini", "homininae", "ape"),
  lnL   = c(homo_lnL, hominini_lnL, homininae_lnL, ape_lnL),
  np    = c(homo_np, hominini_np, homininae_np, ape_np)
)

results <- within(alts, {
  df <- np - null_np
  test_stat <- 2 * (lnL - null_lnL)
  p_value <- pchisq(test_stat, df = df, lower.tail = FALSE)
})

results

