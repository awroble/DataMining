#first task
install.packages('PogromcyDanych',repos="http://cran.rstudio.com/")
install.packages('knitr',repos="http://cran.rstudio.com/")
library(PogromcyDanych)
library(knitr)
setLang()

#second task
data(skiJumps2013)

#just a check
#head(skiJumps2013[,1:5],5)

jump_speed <-(skiJumps2013$jumpSpeed)
jump_distance <-(skiJumps2013$jumpDistance)
comp_country <-(skiJumps2013$compCountry)
jumper_Country <-(skiJumps2013$jumperCountry)
jumper_DOB <-(skiJumps2013$jumperDateOfBirth)

#filtering out old results
sj14 <- subset(skiJumps2013, as.Date(skiJumps2013$compDate) > "2013-12-31")

#just a check
#head(sj14[,1:5],5)

#rewriting into new vars
jump_speed <-(sj14$jumpSpeed)
jump_distance <-(sj14$jumpDistance)
comp_country <-(sj14$compCountry)
jumper_country <-(sj14$jumperCountry)
jumper_DOB <-(sj14$jumperDateOfBirth)

#summaries
summary(jump_speed)
summary(jump_distance)
table(comp_country)
table(jumper_country)
summary(jumper_DOB)

#graphs
barplot(table(jump_speed),col=c("grey","red"))
barplot(table(jump_distance),col=c("yellow","blue","green"))
barplot(table(comp_country),col=c("red","blue","green"))
barplot(table(jumper_country),col=c("orange","cyan","pink"))
barplot(table(jumper_DOB),col=c("grey","cyan"))