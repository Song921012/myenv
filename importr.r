installedPreviously <- read.csv('Rpackages.csv')

baseR <- as.data.frame(installed.packages())

toInstall <- setdiff(installedPreviously, baseR)
install.packages(toInstall)
