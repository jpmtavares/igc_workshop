source("scripts/data_cleaning.R")

library(ggplot2)

ggplot(data = data,
       # since we defined the data.frame before, we don't need to call it again
       # in aes() function
       mapping = aes(x = year, y = lifeExp, by = country)) + 
  # aes() function combines aesthetics (visual values) with variables (data values)
  # if we want to change the color independently of the variables
  # we don't need the mapping argument
  geom_point(color = "blue") +
  geom_line(mapping = aes(color = continent))


ggplot(data = data,
       mapping = aes(x = gdpPercap, y = lifeExp, color=continent)) +
  geom_point(alpha=0.5, size=3, shape=17) +
  scale_x_log10() +
  geom_smooth(method="lm", size=0.5)

# Panels
starts.with <- substr(data$country,start = 1, stop = 1)
#head(starts.with)
#tail(starts.with)
#length(starts.with)
az.countries <- data[starts.with %in% c("A", "Z"), ] # = data[starts.with =="A" | starts.with == "Z", ]

lifeExp_plot <- ggplot(data = az.countries,
              mapping = aes(x= year, y= lifeExp, color = continent )) +
  geom_line() +
  facet_wrap(~ country) +
  labs(
    x="Year",
    y= "life expectancy",
    title = "Figure 1",
    subtitle = "something something",
    color = "Continent"
    
  ) + theme(axis.text.x = element_text(angle= 60, hjust=1))

dir.create("results")

# Save plots
ggsave(filename = "results/lifeExp.png", plot = lifeExp_plot,
       width = 12, height = 10, dpi = 300, units = "cm")

# Challenge
ggplot(data = data,
       mapping = aes(x= gdpPercap, fill = continent )) +
  geom_density() +
  scale_x_log10() +
  facet_wrap( ~ year)

