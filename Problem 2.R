
pvalues <- scan("https://www.math.ntnu.no/emner/TMA4267/2018v/pvalues.txt")
alpha <- 0.05
alpha_loc <- 5e-05


## Subproblem a)

# Number of null-hypotheses rejected:
num_H0_rejected <- sum(pvalues < alpha)  # Summing over boolean values
paste("We reject", num_H0_rejected, "null-hypotheses.")


## Subproblem b)

# Number of null-hypotheses rejected using the Bonferroni method:
num_H0_rejected <- sum(pvalues < alpha_loc)  # Summing over boolean values
paste("We reject", num_H0_rejected, "null-hypotheses with the Bonferroni method.")


## Subproblem c)
pvalues_first <- head(pvalues, n = -100)  # The true null-hypotheses
pvalues_last <- tail(pvalues, n = 100)    # The false null-hypotheses

# Using alpha from subproblem a):
rejected_first <- sum(pvalues_first < alpha)  # Summing over boolean values
rejected_last <- sum(pvalues_last < alpha)    # Summing over boolean values
paste("We reject", rejected_first, "null-hypotheses among the first 900.")
paste("We reject", rejected_last, "null-hypotheses among the last 100.")

# Using alpha from subproblem b):
rejected_first <- sum(pvalues_first < alpha_loc)  # Summing over boolean values
rejected_last <- sum(pvalues_last < alpha_loc)    # Summing over boolean values
paste("We reject", rejected_first, "null-hypotheses among the first 900 with the Bonferroni method.")
paste("We reject", rejected_last, "null-hypotheses among the last 100 with the Bonferroni method.")