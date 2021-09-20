Sample Population

All independent variables in this data set are aggregated on Department of Housing and Urban Development (HUD) Continuum of Care (CoC) facilities. Our sample population includes CoC facilities providing homeless services to regions that contain one or more counties. There are CoCs that are Statewide and CoCs for a Balance of State (BoS). Any/all BoS CoCs and statewide CoCs have been removed from the data set as they will not include county-level data for comparison with the independent and control variables. Note that this would remove regions of the country which have relatively-to-extremely low homeless populations. States which have a only a statewide CoC are: Delaware, Maine, Montana, North Dakota, Rhode Island, Wyoming. Aggregating only the CoCs providing services at a county level, our sample population will include 329 CoCs, from 44 states, composed of ~758 counties, and ~258 metropolitan statistical areas (MSAs) as defined by the Office of Management and Budget (OMB).

Merging Datasets: Matching CoCs with Federal Information Processing Standars (FIPS)

All of the data collected, with the exception of the housing inventory counts and homeless data, is collected at the county level. Given that CoCs contain one or more counties, all CoCs must be matched to a list of counties. In order to accomplish this, a dictionary of CoCs and counties was created. FIPS codes and year are the unique IDs on which the datasets are merged.

Note that the FIPs Codes, county names, CBSA codes, area names, and county names come from the HUD Fair Market Rent (FMR) rent data sets. This breaks down the areas into individual counties, MSAs, and/or HUD Fair Market Rent (FMR) areas.

In cases where CoCs are regional, there exists no corresponding county. As such, these CoCs are deleted from the dictionary key since we will not be able to match homeless numbers with independent variables (as they use FIPS counties). In cases where the CoC has no corresponding FIPS county, they are also removed from the data set. Note that some CoCs correspond to multiple counties within HUD Fair Market Rent (FMR) areas, and/or MSAs along with individual counties, whereas other CoCs are individual counties by themselves. 

Where there are FIPS that are duplicated, i.e. matched to more than one CoC, the FIPS county will be deleted from the CoC in which there are multiple counties, or deleted from the CoC name not explicitly using the name of the county, except in situations where that would allow for a major CoC to be truncated/underrepresented from the data set. In such a case, the largest of the two CoCs will be kept in favor of that county, deleting the smaller CoC (e.g. IL-510; Chicago CoC). That is, some counties are included in FMR or MSAs which share a name with the CoC, but the CoC does not name the county it includes. There are also cases where the CoC is named after the town name (e.g. MA and VA), as opposed to the county, city, or metro area. In these cases, we will use the HUD FIPS town names and keep the closest town/CoC matches, deleting the duplicate from the larger territory.  
The above allows for each county to only appear once in the sample, therefore preventing double-counting, and including as many CoCs in our sample dataset as possible (resulting in optimal data inclusion). Since we will aggregate variable data together for each CoC’s county list, this method should provide the best Coc to FIPS county matches. 

County-level data (aggregated at the CoC Level)

All variables for the counties in each CoC area are aggregated by mean, median, or sum. As some Census population data was not available for all years of our data set, total county populations have been imputed using a mean. As such, some values for population density are also based off of the imputed county population mean values. All population variables have been recoded to per 10,000 residents based on the summed county populations of the greater CoC region.

Homelessness CoC Data

Data on homelessness is collected from HUD CoC facilities for the time period between 2007 and 2020.  CoC facilities are located in city-county regions of the country for the purpose of providing homeless services. These services include, but are not limited to, allocating funds and resources for emergency shelters, transitional housing, and non-profits serving the homeless. This data includes multiple variables for homeless counts. These counts are performed once annually in the month of January by HUD. Homeless populations included in this data set are: Overall Homelessness, Sheltered Homeless, Unsheltered Homeless, Chronically Homeless, Veterans Homeless, and Safe Haven Homelessness. 

For this study, overall homeless is the primary dependent variable. The subpopulations which make up this variable are denoted below. 

  Overall Homeless =  TH + SH + ES + Unsheltered
    Note: The best efforts of HUD counts is that there is no overlap of the below subpopulations. 
    TH = homeless counts in transitional housing
    SH = Homeless occupying Safe Havens (a program introduced around 2010 as an augmentation to emergency shelters)	
    ES = homeless counts in emergency shelters
    Unsheltered – the total homeless counts for those living in places not meant for human habitation (streets, condemned houses, etc.)
    
    See below for exceptions where certain subpopulations are not counted or did not yet exist:

        2007 – 2010 – The ‘Overall Veterans Homeless’ variable is missing for these years
        2007 – 2010 – The Chronically homeless variable is ‘overall chronically homeless individuals’ as opposed to ‘overall chronically homeless’ from 2011 – 2020
        2007 – 2014 – The ‘overall homeless unaccompanied youth (under 25)’ variable is missing
        2007 – 2009 – SH data is missing

#Additional breakdown on the jail/prison populations is forthcoming

Incarceration

Data on incarceration is from the Vera Institute of Justice. For the purposes of this analysis, we are using data from 2007 – 2018 because data from CoCs is not available prior to 2007. For jail populations, longitudinal data is available between 2007 and 2018. For prison populations, data is only available through 2016. Vera aggregated this time-series data from the Bureau of Justice Statistics (BJS), Annual Survey of Jails (ASJ), and the Census of Jails (COJ).

#HMIC information forthcoming

Merging/Parsing HMIS-HIC Bed data with PIT data
Data merging protocol:

-HMIS-HIC data without corresponding HUD-PIT CoC data will be deleted; no PIT to HIC comparisons possible (Justification: Master data set is homeless counts, so without that, the matching data shows little)
-HUD data without the corresponding HIC data will simply have missing values

Cannabis Policy

This study is designed to predict the effects of recreational and medicinal cannabis legalization on homelessness. That is, the study attempts to measure the degree that cannabis policy can result in increased clusters of homelessness. For this purpose, medical and recreational cannabis policy is collected from official state legislature websites. All variables for recreational and medicinal cannabis policy is coded yes or no by year. Note that states with only CBD as medically legal, or CBD with trace amounts of THC only, are not considered a medically legally state for this study. The reasoning here is that such medical treatments contain negligible psychoactive components and are not commonly abused substances.  CBD is not considered an addictive substance, so it is not included as "medical cannabis" for the purposes of this study. Additionally, states such as Utah, which do have some medical cannabis legislation, extremely limit availability to anyone without some terminal condition; this will not be considered a "medically legal" territory for our study. Other states, such as Virginia, only expanded their medical cannabis laws to allow for access to anyone a doctor deemed it beneficial to, though their medical cannabis program had existed for years. As such, our data set will indicate Virginia only as having medical cannabis starting in 2018.

#Information is forthcoming on the following variables

Climate

Election Votes from 2008 - 2020

Median Household Income

Rents

Poverty
