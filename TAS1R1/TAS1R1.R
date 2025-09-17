# Manually extracted values from PAML output
null_lnL <- -13731.308321 
null_np <- 70
homo_lnL <- -13730.656802 
homo_np <- 71
hominini_lnL <- -13731.303467
hominini_np <- 71
homininae_lnL <- -13728.869725
homininae_np <- 71
ape_lnL <- -13730.318447
ape_np <- 71

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