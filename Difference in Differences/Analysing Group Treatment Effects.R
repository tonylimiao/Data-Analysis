# loading the packages
library(did)
library(readxl)

# load the homeless data
homeless_raw <- read_excel('/Users/roadie/opt/anaconda3/envs/Data-Analysis/assets/Agg Homeless, Beds, Incar, Pov, Income, Rents, Climate, Elec, DrugPol (Recoded Minimal Master).xlsx')

homeless <- homeless_raw %>% 
  rename(rents_cnty_median = '50_percentile_rent_overall_cnty_median')

# See github.com/cran/did for details

# Estimate group-time average treatment effects

out <- att_gt(yname = "overall_homeless_per10k",
              #Need to recode data set to set the YearFirstTreated variable
              gname = "first.treat",
              idname = "CoC_number",
              tname = "year",
              xformla = ~1,
              data = homeless,
              est_method = "reg"
)

# Plotting the groupptime average treatment effects

ggdid(out, ylim = c(-.25, .1))

# Creating an event-study plot

es <- aggte(out, type = "dynamic")

# Plot the event-study

ggdid(es)

# Compute the overall average treatment effect parameter

group_effects <- aggte(out, type = "group")
summary(group_effects)