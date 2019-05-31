# download packages
library(ggplot2)

# read gapminder data
data <- read.csv("data/gapminder_data.csv", stringsAsFactors = FALSE)

# density plot of GDPperCap by year
ggplot(data = data,
       mapping = aes(x= gdpPercap, fill = continent )) +
  geom_density() +
  scale_x_log10() +
  facet_wrap( ~ year)

# data for 1967
data_in_67 <- data[data$year == 1967,]
head(data_in_67)


ggplot(data = data_in_67,
       mapping = aes(x= gdpPercap, fill = continent )) +
  geom_density() +
  #scale_x_log10() +
  facet_wrap( ~ continent)

data_in_67_Oceania <- data_in_67[data_in_67$continent=="Oceania",]


data_in_oceania <- data[data$continent=="Oceania",]
dim(data_in_oceania)

ggplot(data = data_in_oceania,
       mapping = aes(x=year, y= gdpPercap, color=country)) +
  geom_line() +
  scale_color_manual(values = c("blue", "darkgreen"))+
  theme_bw()+
  labs(
    y="GDP per capita",
    x="Year",
    title="GDP per capita per Year in Oceania"
  )


data_in_pt <- data[data$country == "Portugal",]
data_in_mx <- data[data$country == "Mexico",]
data_wo_kuwait <- data[data$country != "Kuwait",]

ggplot(data = data,
       mapping = aes(x=year, y= gdpPercap, color=country)) +
  geom_line(show.legend = FALSE) +
  geom_line(data=data_in_pt, color="firebrick1") +
  geom_line(data=data_in_mx, color="forestgreen") +
  scale_color_grey() +
  theme_classic()+
  facet_wrap(~continent) +
  labs(
    y="GDP per capita",
    x="Year",
    title="World development"
  )




