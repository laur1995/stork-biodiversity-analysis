#install.packages("tidyverse")

library(tidyverse)

data(iris)

#Quick view
head(iris)
summary(iris)
str(iris)

#Scatter plot
p1 <- ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) + 
  geom_point(size = 2) +
  labs(
    title = "Relationship between Sepal Length and Petal Length",
    x = "Sepal Length",
    y = "Petal Length"
  ) +
  theme_minimal()

p1

#Boxplot
p2 <- ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(
    title = "Sepal Length by Species",
    x = "Species",
    y = "Sepal Length"
  ) +
  theme_minimal()

p2

#Simple linear model
model <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model)

#Save plots 
ggsave("iris_scatter.png", plot = p1, width = 8, height = 6)
ggsave("iris_boxplot.png", plot = p2, width = 8, height = 6)
