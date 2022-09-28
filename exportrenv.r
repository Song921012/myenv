installed <- as.data.frame(installed.packages())

write.csv(installed, 'Rpackages.csv')
