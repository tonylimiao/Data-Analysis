Sample Population

All data on homelessness are aggregated for Department of Housing and Urban Development (HUD) Continuum of Care (CoC) facilities. Our sample population includes CoC facilities providing homeless services to regions that contain one or more counties. There are CoCs that are Statewide and CoCs for a Balance of State (BoS). Statewide and BoS CoCs have been removed from the data set as they do not include county-level data for comparison with the independent and control variables. Note that this would remove regions of the country which have relative-to-extremely low homeless populations. States which are excluded from the data due to having only a statewide CoC are: Delaware, Maine, Montana, North Dakota, Rhode Island, and Wyoming. Aggregating only the CoCs providing services at a county level, our sample population will include 329 CoCs, from 44 states, composed of ~758 counties, and ~258 metropolitan statistical areas (MSAs) as defined by the Office of Management and Budget (OMB).

**All independent variables in this data are aggregated at the CoC Level**

Merging Datasets: Matching CoCs areas with Federal Information Processing Standards (FIPS) state-county codes

All of the data collected, with the exception of the housing inventory counts and homeless data, is collected at the county level. Given that CoCs contain one or more counties, all CoCs must be matched to a list of counties so that datasets can be merged. In order to accomplish this, a dictionary of CoCs and counties was created. The unique IDs on which the datasets are merged are FIPS state-county codes and years.

Note that the FIPs State County Codes, county names, area names, and core based statistical areas (CBSA) codes come from the HUD Fair Market Rent (FMR) rent data sets. This breaks down the CoC areas into individual counties, MSAs, and/or HUD Fair Market Rent (FMR) areas. #Additional breakdowns on FMRs versus MSAs may soon be provided.  

In cases where CoCs are regional, there exists no corresponding county. As such, these CoCs are deleted from the dictionary key since we will not be able to match homeless counts with independent variable data collected at the county-level. In cases where the CoC has no corresponding FIPS county, data is also truncated. Note that some CoCs correspond to multiple counties within HUD Fair Market Rent (FMR) areas and/or MSAs.

Where there are FIPS counties that are duplicated, i.e. matched to more than one CoC, the FIPS county will be deleted from the CoC in which there are multiple counties, or deleted from the CoC name not explicitly using the name of the county, except in situations where that would allow for a major CoC to be truncated/underrepresented from the data set. In such a case, the largest of the two CoCs will be kept in favor of that county, deleting the smaller CoC (e.g. keeping IL-510; Chicago CoC). That is, some counties are included in HUD FMR areas or MSAs which share a name with the CoC, but the CoC does not name the county it includes. There are also cases where the CoC is named after the town name (e.g. MA and VA), as opposed to the county, city, or metro area. In these cases, we will use the HUD FIPS town names and keep the closest town/CoC matches, deleting the duplicate from the larger territory. 

At the end of this matching process, each FIPS should only be listed once for each year. The above allows for each county to appear only once in the sample, therefore preventing double-counting, while including as many CoCs in our sample dataset as possible. Since we will aggregate variable data together for each CoC’s county list, this method should provide the best Coc to FIPS county matches possible. 

County-level data (aggregated at the CoC Level)

All variables for the counties in each CoC area are aggregated by mean, median, or sum. As some Census population data was not available for all years of our data set, total county populations have been imputed using a mean. As such, some values for population density are also based off of the imputed county population mean values. All population variables have been recoded to per 10,000 residents based on the summed county populations of the greater CoC region.

Homelessness CoC Data

Data on homelessness is collected from HUD CoC facilities for the time period between 2007 and 2020.  CoC facilities are located in city-county regions of the country for the purpose of providing homeless services. These services include, but are not limited to, allocating funds and resources for emergency shelters, transitional housing, and non-profits serving the homeless. This data includes multiple variables for homeless counts. These counts are performed once annually in the month of January by HUD. Homeless populations included in this data set are: Overall Homelessness, Sheltered Homeless, Unsheltered Homeless, Transitional Shelter (TS) counts, emergency shelter (ES) counts, Chronically Homeless, Veterans Homeless, and Safe Haven (SH) Homelessness. 

For this study, overall homeless is the primary dependent variable. The subpopulations which make up this variable are denoted below. 

Overall Homeless =  TH + SH + ES + Unsheltered

TH = homeless counts in transitional housing
SH = Homeless occupying Safe Havens (a program introduced around 2010 as an augmentation to emergency shelters)	
ES = homeless counts in emergency shelters
Unsheltered – the total homeless counts for those living in places not meant for human habitation (streets, condemned houses, etc.)

See below for exceptions where certain subpopulations are missing, changed, or did not yet exist:

2007 – 2010 – The ‘Overall Veterans Homeless’ variable is missing for these years
2007 – 2010 – The 'Chronically homeless' variable is ‘overall chronically homeless individuals’ 
2011 - 2020 – Changes to ‘overall chronically homeless’ 
2007 – 2014 – The ‘overall homeless unaccompanied youth (under 25)’ variable is missing
2007 – 2009 – Safe Haven (SH) data is missing

Incarceration

Data on incarceration is from the Vera Institute of Justice. For the purposes of this analysis, we are using data from 2007 – 2018 because data from CoCs is not available prior to 2007. For jail populations, longitudinal data is available between 2007 and 2018. For prison populations, data is only available through 2016. Vera aggregated this time-series data from the Bureau of Justice Statistics (BJS), Annual Survey of Jails (ASJ), and the Census of Jails (COJ). Subpopulations that are included in the data set are jail and prison populations (male and female), jail and prison admission counts, and jail discharge counts. The data also includes rates.

Description of variables from the Vera codebook: 

Total jail admissions is an estimate of the number of admissions in each jurisdiction or county in a given year. There is a similar variable for total jail discharges Most frequently, jail admissions or discharges are measured over the last week in June that is multiplied to get an annual count, but this has changed over time. More recently the question has shifted to a direct annual count, and the DCRP uses an annual count broken down by gender.

Total jail population is defined as the average daily number of people held in jail through December 31 of a given year. Jail population estimates are disaggregated by race 1 and gender, as well as by jurisdiction. These disaggregated estimates are reported as a single day count at the end of June (except for 2015 and 2016 where the reference date was end of December), rather than an annual average, and thus do not necessarily sum to the total average daily population.

Prison population is defined as those individuals sentenced to the state prison authority, aggregated by the county of commitment. Total prison population count is based on the number of people held in prison on December 31 of a given year. We disaggregate prison population count by race and gender.

Total prison admissions count the number of times people are sent to prison from each county. For all counties, prison admissions exclude returns from court and transfers from other jurisdictions. Admissions with a sentence of less than 12 months are excluded from the figures for Arizona, Maryland, North Carolina, and South Carolina.

Housing Inventory Counts (HIC)

Data on HIC is collected from Housing Management Information System (HMIS). This data set includes numbers on housing inventory beds available year-round. Here it is noteworthy that the variables data for bed counts and bed utilization rates are comprised of categories for housing beds that change slightly from year to year. These categories include beds in transitional housing, emergency shelters, safe havens, and rapid rehousing programs. For example, Rapid Rehousing (RRH) beds were included in counts for the year 2013 where other years do not include this program. Given these various programs starting/ending, the total number of beds available year-round is the variable included in this data. 

Data here is merged on the CoC numbers, as each data set uses CoC HUD numbers as unique identifiers. When merging/ParsingHIC data with CoC homeless counts, HMIS data without corresponding CoC data is be deleted; no PIT to HIC comparisons possible. (Justification: Master data set is homeless counts, so without that, the matching data shows little)
-HUD data without the corresponding HIC data will simply have missing values

Cannabis Policy

This study is designed to predict the effects of recreational and medicinal cannabis legalization on homelessness. That is, the study attempts to measure the degree that cannabis policy can result in increased clusters of homelessness. For this purpose, medical and recreational cannabis policy is collected from official state legislature websites. All variables for recreational and medicinal cannabis policy is coded yes or no by year. Note that states with only CBD as medically legal, or CBD with trace amounts of THC only, are not considered a medically legally state for this study. The reasoning here is that such medical treatments contain negligible psychoactive components and are not commonly abused substances.  CBD is not considered an addictive substance, so it is not included as "medical cannabis" for the purposes of this study. Additionally, states such as Utah, which do have some medical cannabis legislation, extremely limit availability to anyone without some terminal condition; this will not be considered a "medically legal" territory for our study. Other states, such as Virginia, only expanded their medical cannabis laws to allow for access to anyone a doctor deemed it beneficial to, though their medical cannabis program had existed for years. As such, our data set will indicate Virginia only as having medical cannabis starting in 2018.

Climate

Given that the HUD homeless counts are conducted in January, often the coldest month of the year, this makes many areas uninhabitable for life on the street. As this can affect geographic comparisons for homeless counts across the country, data is collected from the National Oceanic and Atmospheric Association (NOAA) as a control variable. NOAA data included for all counties and years in our sample: average low temperature in January and average low temperature national ranking. 

Election Votes from 2008 - 2020

Given that politics can influence the funding available for social welfare programs like HUD provides, this data includes total election votes split by county over politcal party: democrat, republican, and other. This data is collected for every presidential election year from 2008 to 2020. Note: there are currently many missing values for the the year 2020. 

Median Household Income and Poverty

As additional socioeconomic control variables, median household income and poverty are included for each county. This data is collected from the U.S. Census Bureau. All ages in poverty is a percentage of the total residential population. Median income is the median income in US Dollars for all counties in the CoC area. 

Rents

Additionally, data include the cost of rent for all counties and years in the sample population. This data is collected from HUD. A composite variable has been created using the 50th percentile rent values for studio apartments and 1-4 bedroom homes. Each of these categories had the median value taken for the group of counties in each CoC area, and the median of those median values was taken for the composite rent variable. 
