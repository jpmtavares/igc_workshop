# read gapminder data
data <- read.csv("data/gapminder_data.csv", stringsAsFactors = FALSE)

## dplyr
library(dplyr)
library(magrittr)

# select 3 columns
year_country_gdp<-select(data, year, country, gdpPercap)
# it's the same as...
year_country_gdp<-data %>% #this is a pipe 
  select(year, country, gdpPercap)

# filter continent by "Europe" and select 3 columns
year_county_gdp_eur<-data %>%
  filter(continent == "Europe") %>% 
  select(year, country, gdpPercap)

# group data and apply functions to those groups (mean in this case)
mean_gdp_by_continent <- data %>% 
  group_by(continent) %>% 
  summarize(mean_gdpPercap=mean(gdpPercap))

#filter()
#group_by()
#summarize()
#mutate()