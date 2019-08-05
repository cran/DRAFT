## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(DRAFT)
# San Diego 2017-2018 data is included in the package as 
# 'incidence_data1'
head(incidence_data1)

# we will fit data to an SIR model (no behavior terms).
# 1-SIR, 2-SEIR, 3-behavior SIR 
epi_model = 1
# the population is about 3 million
pop = 3e6
# Set disease generation time in days
Tg = 2.6
# latent period in days - needed only for SEIR model 
# (epi_model = 2)
sigma = NULL
# Parameters for behavior modification model only
dp = dq = ts = dL = NULL
# designate an output directory path.
write_dir = tempdir()


## ---- eval=F-------------------------------------------------------------
#  results <- runDRAFT(inc_data=incidence_data1, out_dir=write_dir, epi_model=epi_model, pop=pop, Tg=Tg, dp=dp, dq=dq, ts=ts, dL=dL, verbose=T)

## ------------------------------------------------------------------------
# view results in directory
paste0(write_dir, "/user_data_", Sys.Date(), "_Tg_", Tg, "/")

## ------------------------------------------------------------------------
# San Diego 2013-2014 data is included in the package as 
# 'incidence_data2'
head(incidence_data2)

# notice the additional dates at the end of the dataframe with 
# cases=NA.  DRAFT will use the non-NA points to fit a model 
# and then run the model forward to create a forecast for all 
# NA entries.
incidence_data2[28:41, ]

# we will fit data to an SIR model (no behavior terms).
# 1-SIR, 2-SEIR, 3-behavior SIR 
epi_model = 1
# the population is about 3 million
pop = 3e6
# Set disease generation time in days
Tg = 2.6
# latent period in days - needed only for SEIR model, 
# epi_model = 2
sigma = NULL
# Parameters for behavior modification model only
dp = dq = ts = dL = NULL
# designate an output directory
write_dir = tempdir()


## ---- eval=F-------------------------------------------------------------
#  results <- runDRAFT(inc_data=incidence_data2, out_dir=write_dir, epi_model=epi_model, pop=pop, Tg=Tg, dp=dp, dq=dq, ts=ts, dL=dL)

## ------------------------------------------------------------------------
# view results in subdirectory
paste0(write_dir, "/user_data_", Sys.Date(), "_Tg_", Tg, "/")

## ------------------------------------------------------------------------
# Liberia 2014 data is included in the DRAFT package 
#as 'incidence_data3'. 
head(incidence_data3)

# No weeks are specified for forecasting
tail(incidence_data3)

# we will fit data to an SIR model with behavior terms.
# 1-SIR, 2-SEIR, 3-behavior SIR 
epi_model = 3
# the population is about 4 million
pop = 4035777
# Set disease generation time in days
Tg = 12
# latent period in days - needed only for SEIR model
sigma = NULL
# Setting the contact rate modifications for Susceptible 
# and Infected to NULL will cause these parameters to be 
# fit.
dp = dq = NULL
# Behavior modifications are known to have commenced at 
# the end of July 2014.
ts = as.Date("2014-07-30")
# It took approximately 20 days for the changes to fully 
# take hold.
dL = 20
# designate an output directory
write_dir = tempdir()


## ---- eval=F-------------------------------------------------------------
#  results <- runDRAFT(inc_data=incidence_data3, out_dir=write_dir, epi_model=epi_model, pop=pop, Tg=Tg, dp=dp, dq=dq, ts=ts, dL=dL)

## ------------------------------------------------------------------------
# view results in subdirectory
paste0(write_dir, "/user_data_", Sys.Date(), "_Tg_", Tg, "/")

## ------------------------------------------------------------------------
# Liberia 2014 data is included in the DRAFT package 
# as 'incidence_data4'. 
head(incidence_data4)

# Several weeks have been marked for 
# forecasting (cases=NA)
incidence_data4[34:40, ]

# we will fit data to an SIR model with behavior 
# terms. # 1-SIR, 2-SEIR, 3-behavior SIR 
epi_model = 3
# the population is about 4 million
pop = 4035777
# Set disease generation time in days
Tg = 12
# latent period in days - needed only for SEIR model, 
#epi_model = 2
sigma = NULL
# When forecast periods are requested the contact rate 
# modifications for Susceptible and Infected must be set 
# by the user. These values indicate that the initial 
# contact rate for susceptibles will be multiplied by a 
# factor of 1-dp and the initial contact rate of infectious 
# is multiplied by a factor of 1-dq.
dp = 0.002
dq = 0.45
# Behavior modifications are known to have commenced at 
# the end of July 2014.
ts = as.Date("2014-07-30")
# It took approximately 20 days for the changes to fully take hold.
dL = 20
# designate an output directory
write_dir = tempdir()

## ---- eval=F-------------------------------------------------------------
#  results <- runDRAFT(inc_data=incidence_data4, out_dir=write_dir, epi_model=epi_model, pop=pop, Tg=Tg, dp=dp, dq=dq, ts=ts, dL=dL)

## ------------------------------------------------------------------------
# view results in subdirectory
paste0(write_dir, "/user_data_", Sys.Date(), "_Tg_", Tg, "/")

## ------------------------------------------------------------------------
# Liberia 2014 data is included in the DRAFT package 
# as 'incidence_data4'. 
head(incidence_data3)

# we will fit data to an SIR model with behavior terms.
# 1-SIR, 2-SEIR, 3-behavior SIR 
epi_model = 2
# the population is about 4 million
pop = 4035777
# Set disease generation time in days
Tg = 17
# latent period in days - needed only for SEIR 
# model, epi_model = 2
sigma = 5
# Parameters for behavior modification model only
dp = dq = ts = dL = NULL
# designate an output directory
write_dir = tempdir()

## ---- eval=F-------------------------------------------------------------
#  results <- runDRAFT(inc_data=incidence_data3, out_dir=write_dir, epi_model=epi_model, pop=pop, Tg=Tg, dp=dp, dq=dq, ts=ts, dL=dL)

## ------------------------------------------------------------------------
# view results in subdirectory
paste0(write_dir, "/user_data_", Sys.Date(), "_Tg_", Tg, "/")

