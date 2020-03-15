
library(nortest)  # Importing package
library(car)      # Importing package

## Subproblem c)

ds <- read.csv("https://web.stanford.edu/~hastie/CASI_files/DATA/diabetes.csv", sep = ",")

reduced <- lm(prog ~ sex + bmi + map + hdl + ltg, data = ds)  # The five variable reduced model

summary(reduced)

plot(reduced$fitted, rstudent(reduced), pch = 20) # Plotting residuals
qqnorm(rstudent(reduced), pch = 20) # Plotting Q-Q plot
qqline(rstudent(reduced), col = "red")  # Plotting line in Q-Q plot


## Subproblem d)

full <- lm(prog ~ ., data = ds) # The full model

# Find the p-value from Pr(>|F|):
linearHypothesis(full, hypothesis.matrix = c("age = 0", "tc = 0", "ldl = 0", "tch = 0", "glu = 0"))