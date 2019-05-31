dir.create("data") #create folder

# download gapminder data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv",
              "/home/participant/igcR/data/gapminder_data.csv")
file.info("data/gapminder_data.csv")
getwd()
#setwd("data/")

# read gapminder data
data <- read.csv("data/gapminder_data.csv", stringsAsFactors = FALSE)
# check its structure
str(data)
# view data.frame
head(data)
View(data)

# get data.frame dimensions
nrow(data)
ncol(data)
dim(data)
names(data)

summary(data)

# subsetting
life_exp <-  data$lifeExp
life_exp
str(life_exp)

data["lifeExp"]

# create new column
data$pop_in_mn <- data$pop/1e6
data$pop_in_mn

data[3, c("lifeExp","pop")]

data[data$country == "Sweden" & data$year == 2007, ]

is_gt_2000 <- data$year >= 2000
is_africa <- data$continent == "Africa"

data_since_2000 <- data[is_gt_2000, ]
data_since_2000_in_africa <- data[is_gt_2000 & is_africa,]

# vectorization
c(3,45,6,8,2,1)+c(3,2,1)

x <- c(1,2,3,4,5,6,7)
z <- vector(length = 7)
for (i in 1:7){
  z[i] <- x[i]+3
}

ghg <- data_since_2000 %in% "Africa"

dir.create("scripts")
