
pvalues <- scan("https://www.math.ntnu.no/emner/TMA4267/2018v/pvalues.txt")


## Subproblem a)
# Number of null-hypotheses rejected:
num_H0_rejected <- sum(pvalues < 0.05)  # Summing over boolean values
paste("We reject", num_H0_rejected, "null-hypotheses.")


## Subproblem b)
# Number of null-hypotheses rejected using the Bonferroni method:
num_H0_rejected <- sum(pvalues < 5e-05)  # Summing over boolean values
paste("We reject", num_H0_rejected, "null-hypotheses with the Bonferroni method.")


## Subproblem c)
pvalues_first <- head(pvalues, n = -100)  # The true null-hypotheses
pvalues_last <- tail(pvalues, n = 100)    # The false null-hypotheses
# Using alpha from subproblem a):
rejected_first <- sum(pvalues_first < 0.05)
rejected_last <- sum(pvalues_last < 0.05)
paste("We reject", rejected_first, "null-hypotheses among the first 900.")
paste("We reject", rejected_last, "null-hypotheses among the last 100.")

# Using alpha from subproblem b):
rejected_first <- sum(pvalues_first < 5e-05)
rejected_last <- sum(pvalues_last < 5e-05)
paste("We reject", rejected_first, "null-hypotheses among the first 900 with the Bonferroni method.")
paste("We reject", rejected_last, "null-hypotheses among the last 100 with the Bonferroni method.")