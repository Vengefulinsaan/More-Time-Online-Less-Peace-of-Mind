# Main R Script for HarvardX PH125.9x Capstone Project
# Project Title: "More Time Online? Less Peace of Mind"
# Author: Mohammed F. R. Noor
# Purpose: Simulate social media mental health dataset and analyze 3 research questions

# -------------------------------
# Load required packages
# -------------------------------
if (!require(tidyverse)) install.packages("tidyverse")
library(tidyverse)

# -------------------------------
# Set seed and sample size
# -------------------------------
set.seed(42)
n <- 200  # number of simulated individuals

# -------------------------------
# Simulate Variables
# -------------------------------

# Age: mostly 15–30 (youth more affected by social media)
age <- sample(15:30, n, replace = TRUE)

# Daily social media usage in hours
# Research: Higher time = more loneliness (r ≈ 0.15)
# Source: https://scientiapsychiatrica.com/index.php/SciPsy/article/view/175
daily_hours <- round(rnorm(n, mean = 3.5, sd = 1.5), 1)
daily_hours[daily_hours < 0] <- 0

# Number of platforms used (1 to 8)
# Source: https://pmc.ncbi.nlm.nih.gov/articles/PMC7785056/
platforms_used <- sample(1:8, n, replace = TRUE)

# Compare self to others? (1 = Yes, 0 = No)
# Source: https://pubmed.ncbi.nlm.nih.gov/39242043/
compare_self <- rbinom(n, 1, prob = 0.6)

# Loneliness score (1–10), related to time online
loneliness_score <- round(scale(daily_hours) * 1 + rnorm(n, 5, 2), 1)
loneliness_score <- pmin(pmax(loneliness_score, 1), 10)

# Depression score (1–10), linked to social comparison
# Source: https://pmc.ncbi.nlm.nih.gov/articles/PMC7785056/
depression_score <- round(scale(compare_self) * 0.5 + rnorm(n, 5.5, 1.8), 1)
depression_score <- pmin(pmax(depression_score, 1), 10)

# Anxiety score (1–10), linked to platform use
anxiety_score <- round(scale(platforms_used) * 0.4 + rnorm(n, 5, 1.5), 1)
anxiety_score <- pmin(pmax(anxiety_score, 1), 10)

# Took a social media break? (1 = Yes, 0 = No)
# Source: https://pubmed.ncbi.nlm.nih.gov/35512731/
took_break <- rbinom(n, 1, prob = 0.4)

# Felt better after break?
# Source: https://narraj.org/main/article/view/786
felt_better <- ifelse(took_break == 1, rbinom(n, 1, prob = 0.7), rbinom(n, 1, prob = 0.3))

# -------------------------------
# Create Data Frame
# -------------------------------
social_media_data <- data.frame(
  age,
  daily_hours,
  platforms_used,
  compare_self,
  loneliness_score,
  depression_score,
  anxiety_score,
  took_break,
  felt_better
)

# -------------------------------
# Save as CSV
# -------------------------------
write.csv(social_media_data, "simulated_social_media_data.csv", row.names = FALSE)

# -------------------------------
# Summary Output (Optional)
# -------------------------------
head(social_media_data)
summary(social_media_data)
