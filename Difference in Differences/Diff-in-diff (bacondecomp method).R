# replication of Stevenson and Wolfers (2006, QJE)
# beginning page 21 of Goodman-Bacon (2021)

# install and load the packages we'll use
install.packages("bacondecomp")
install.packages("tidyverse")
install.packages("readstata13")
install.packages("dplyr")
library(bacondecomp)
library(tidyverse)
library(dplyr)
library(modelsummary)
library(broom)
library(readxl)
library(readstata13)

# load the homeless data
homeless_raw <- read_excel('/Users/roadie/opt/anaconda3/envs/Data-Analysis/assets/Agg Homeless, Beds, Incar, Pov, Income, Rents, Climate, Elec, DrugPol (Recoded Minimal Master).xlsx')

homeless <- homeless_raw %>% 
  rename(rents_cnty_median = '50_percentile_rent_overall_cnty_median')

# get twfe estimate
two_way_fe = lm(overall_homeless_per10k ~ cannabis_legal_rec + factor(state) + factor(year), data = homeless)

# view the estimates, coefficient on post is the effect we're interested in
summary(two_way_fe)
# see that it's pretty much the -3.08 (s.e. = 1.13) from page 22

# run and save the decomposition without controls
#Note getting an unbalance panel error here | Unsure what the id_var should be
bacon_homeless = bacon(overall_homeless_per10k ~ cannabis_legal_rec,
                 data = homeless,
                 id_var = "state",
                 time_var = "year")

# plot the estimates and weights (without controls)
# this is figure 6
ggplot(bacon_divorce) +
  aes(x = weight, y = estimate, shape = factor(type)) +
  geom_point() +
  geom_hline(yintercept = 0) +
  labs(x = "Weight", y = "Estimate", shape = "Type")

# run and save the decomposition with controls (per capita income)
bacon_divorce_controls = bacon(asmrs ~ post + pcinc,
                         data = divorce,
                         id_var = "state",
                         time_var = "year")

# note the change in the output with controls
# the reason for this is explained on page 7 of the FAQ:
# "Why does the output of bacondecomp differ with and without controls?"

# plot the estimates and weights (with controls)
ggplot(bacon_divorce_controls$two_by_twos) +
  aes(x = weight, y = estimate, shape = factor(type)) +
  geom_point() +
  geom_hline(yintercept = 0) +
  labs(x = "Weight", y = "Estimate", shape = "Type")