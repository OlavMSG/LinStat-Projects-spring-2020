
## Subproblem c)

library(nortest)  # Importing package

ds <- read.csv("https://web.stanford.edu/~hastie/CASI_files/DATA/diabetes.csv", sep = ",")

reduced <- lm(prog ~ sex + bmi + map + hdl + ltg - 1, data = ds)  # The five variable reduced model

summary(reduced)

plot(reduced$fitted, rstudent(reduced), pch = 20) # Plotting residuals
qqnorm(rstudent(reduced), pch = 20) # Plotting Q-Q plot
qqline(rstudent(reduced), col = 2)  # Plotting line in Q-Q plot

ad.test(rstudent(reduced))  # Finding p-value, small => reject H_0


## Subproblem d)

#...