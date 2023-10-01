#installedPreviously <- read.csv("~/myenv/Rpackages.csv")

#baseR <- as.data.frame(installed.packages())

#toInstall <- setdiff(installedPreviously, baseR)
#install.packages(toInstall)

pkgs<-readRDS("C:/Users/aidishage/Desktop/myenv/Rpkgs.rds")

install.packages(rownames(pkgs))