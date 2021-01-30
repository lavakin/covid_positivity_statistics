---
title: "R Notebook"
output: html_notebook
---
# linear regression
gender_data = read.delim("/home/lavakin/Documents/school/past/zapoctak/results/gender_ratio.txt", header = TRUE, sep = " ", dec = ".")
gender_lin = lm(zeny~muzi, data = gender_data)
plot(data$muzi, data$zeny, pch = 16, col = "blue", xlab = "ženy", ylab = "muži")
abline(gender_lin)
summary(gender_lin)

by_visits_data = read.delim("/home/lavakin/Documents/school/past/zapoctak/results/by_visits.txt", header = TRUE, sep = " ", dec = ".")
by_visits2_data = read.delim("/home/lavakin/Documents/school/past/zapoctak/results/by_visits2.txt", header = TRUE, sep = " ", dec = ".")
lambda = mean(by_visits2_data$val)
occ = by_visits_data$occ
pois = dpois(1:13, lambda)
pois[14] = 1 - sum(pois)
plot(pois, type = "b", pch = 19, col = "red", xlab="počet lidí * 0,05", ylab="pravděpodobnost")
par(new = TRUE)
plot(by_visits_data$occ, axes = FALSE, xlab = "", ylab = "", pch=4)
axis(side=4, las=1)
mtext("počet", side=4)

chisq.test(x=occ, y=1:14, p=pois)