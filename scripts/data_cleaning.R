# download gapminder data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv",
              "/home/participant/igcR/data/gapminder_data.csv")

# read gapminder data
data <- read.csv("data/gapminder_data.csv")

data$pop <- data$pop/1e6
data$life_exp_above_80 <- data$lifeExp > 80