installed <- as.data.frame(installed.packages())

write.csv(installed, '~/myenv/Rpackages.csv')
saveRDS(installed.packages(),file="~/myenv/Rpkgs.rds")