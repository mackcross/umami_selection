rm(list=ls())

#lscores 1/nst=2 tratio=estimate basefreq=empirical rates=equal pinvar=0.0;
HKY85_log <- 13473.933
HKY85_param <- 1

#lscores 1/nst=2 tratio=estimate basefreq=empirical rates=gamma shape=estimate pinvar=0.0;
HKY85_G_log <- 13236.351
HKY85_G_param <- 2

#lscores 1/nst=2 tratio=estimate basefreq=empirical rates=gamma shape=estimate pinvar=estimate;
HKY85_I_G_log <- 13235.186
HKY85_I_G_param <- 3

#lscores 1/nst=6 rmatrix=estimate basefreq=empirical rates=equal pinvar=0.0; 
GTR_log <- 13451.217
GTR_param <- 5

#lscores 1/nst=6 rmatrix=estimate basefreq=empirical rates=gamma shape=estimate pinvar=0.0;
GTR_G_log <- 13222.550
GTR_G_param <- 6

#lscores 1/nst=6 rmatrix=estimate basefreq=empirical rates=gamma shape=estimate pinvar=estimate;
GTR_I_G_log <- 13221.676
GTR_I_G_param <- 7

# ROUND ONE 
df_1 <- HKY85_G_param - HKY85_param
p_value1 <- 1 - pchisq(2 * abs(HKY85_log - HKY85_G_log), df_1)
# Alternative accepted: HWY85 + G better model 

df_2 <- HKY85_I_G_param - HKY85_G_param
p_value2 <- 1 - pchisq(2 * abs(HKY85_G_log - HKY85_I_G_log), df_2)
# Null not rejected: HWY85 + G better model  

df_3 <- GTR_param - HKY85_I_G_param
p_value3 <- 1 - pchisq(2 * abs(HKY85_I_G_log - GTR_log), df_3)
# Alternative accepted: GTR better model 

df_4 <- GTR_G_param - GTR_param
p_value4 <- 1 - pchisq(2 * abs(GTR_log - GTR_G_log), df_4)
# Alternative accepted: GTR + G better model 

df_5 <- GTR_I_G_param - GTR_G_param
p_value5 <- 1 - pchisq(2 * abs(GTR_G_log - GTR_I_G_log), df_5)
# Null not rejected: GTR + G better model   

## ROUND TWO 
df_6 <- GTR_G_param - HKY85_G_param
p_value6 <- 1 - pchisq(2 * abs(HKY85_G_log - GTR_G_log), df_6)

# HWKY85 + G is best model 

