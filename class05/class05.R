# Class 05 Data Visualization
# Run shortcut: command + enter
# Source: run everything on your script

# This is the "base" R plot
plot(cars)

# We are going to get a new plotting package called ggplot2
# ggplot(cars) --> cannot because we did not load it yet

# install.packages("ggplot2")
# Once we installed the package, we don't have to install again
# Run it on console rather than script because we don't want to constantly install it

# Now we need to call/load the package
# We have to call library every time we start a new session
library(ggplot2)

# This sets up the plot 
#ggplot(cars) --> need aes() and geom() to plot

gg <- ggplot(data=cars) + aes(x=dist, y=speed) + geom_point()
gg

# One last thing. lets add a line to the data
gg + geom_smooth(method="lm", se=FALSE)

ggplot(data=cars) + aes(x=dist, y=speed) + geom_point() + 
  geom_smooth(method="lm")

# genes data frame
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

nrow(genes)
colnames(genes)
ncol(genes)
table(genes$State)
127/(72+4997+127)*100
# or
round(table(genes$State)/nrow(genes) * 100, 2)

# Condition1(no drug) vs. Condition2(drug) plot
ggplot(data=genes) + aes(x=Condition1, y=Condition2) +
  geom_point()

# Plot that tells whether the difference in expression values between conditions is statistically significant
p <- ggplot(data=genes) + aes(x=Condition1, y=Condition2, color=State) +
  geom_point()
p

p + scale_colour_manual(values = c("blue", "gray", "red")) +
  labs(x="Control (no drug)", y="Drug Treatment", 
       title="Gene Expression Changes Upon Drug Treatment")

# gapminder
# install.packages("gapminder")
library(gapminder)

# File location online
url <- "https://raw.githubusercontent.com/jennybc/gapminder/master/inst/extdata/gapminder.tsv"

# read.delim(): Reads a file in table format and creates a data frame from it, with cases corresponding to lines and variables to fields in the file.
gapminder <- read.delim(url)

#install.packages("dplyr")
library(dplyr)

gapminder_2007 <- gapminder %>% filter(year == 2007)

g <- ggplot(gapminder_2007) + aes(x=gdpPercap, y=lifeExp) + 
  geom_point(alpha=0.4)
g

g + aes(col=continent, size=pop)

g + aes(col=pop) + geom_point(alpha=0.8)

# scale_size_area(): scale the area of points to be proportional to the value.
# max_size: size of largest points
g + aes(size=pop) + scale_size_area(max_size=10)

# gapminder scatterplot for 1957
colnames(gapminder)
gapminder_1957 <- gapminder %>% filter(year == 1957)

ggplot(gapminder_1957) + 
  aes(x=gdpPercap, y=lifeExp, col=continent, size=pop) + 
  geom_point(alpha=0.7) + scale_size_area(max_size = 15)

#2007





