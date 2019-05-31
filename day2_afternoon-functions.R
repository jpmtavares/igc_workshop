# read gapminder data
data <- read.csv("data/gapminder_data.csv", stringsAsFactors = FALSE)

add_2 <- function(column){
  
  var<-column+2
  return(var)
}

calcGDP <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp=gdp)
  return(new)
}

KtoC <- function(kelvins=400){
  celsius<-kelvins-273.15
  return(paste(celsius, "ºC"))
}

fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}


Fahr_to_Cel <- function (farenheit){
  kelvin 
}

