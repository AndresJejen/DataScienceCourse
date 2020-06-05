## This Analysis is based on the porpose of learn to plot in R with Tidyverse
## Developer: Germán Andres Jejen Cortes
## Twitter:  @andres_jejen
## Script #1

## Importing Library
install.packages("tydiverse")
library(tidyverse)

## Data
## Here we are using mpg data because it is a simple dataset and allows to take
##  insights from it.

# A bit taste
mpg

# if you´re usin r Studio
# view(mpg)

# Our first Plot
ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y = hwy))
## here we can see that exist a negative relationship between displ and hwy
## What means those fields?

## displ: engine displacement, in litres
## hwy:   highway miles per gallon
?mpg

## If you wath carefully there is some points that seems to be outliers,
##  are cars that have a big displ and a medium hwy.

## As DataScientis you have to porpose hypothesis ans try so search some
##  evidence for or against. Always go on every day.

### First Hypothesis: We hypothesize that the cars are hybrids.
###   How to test it?  One way is to plot this same plot adding a color per
###   class.

## If you wanna add some colors ( i.e. Color per vehicle class )
ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy, color=class))


## this class feature classifies cars into groups such as compact, midsize, and
##  SUV. If the outlying points are hybrids, they should be classified as
##  compact cars or, perhaps, subcompact cars (keep in mind that this data was
##  collected before hybrid trucks and SUVs became popular)

## You have several aesthetic mappings, from size, color, shape etc..
## Another example
ggplot(data=mpg) + geom_point(mapping = aes(displ, hwy, shape=class))

## Notice that for sub there is not shape

## How efficient is each car class? ¿How is its relationship?