# load package and dataset 
library(tidyverse)
library(survival)
install.packages("survminer")
library(survminer)
thiotepa <- read_csv("thiotepa.csv")

# Q1 
# Create time to event variable and sort
tte <- thiotepa %>% with(Surv(stop, event))
tte %>% sort
# Plot Kaplan-Meier curves for the placebo and thiotepa arms
survfit(tte ~ rx, thiotepa) %>% 
        ggsurvplot(data = thiotepa, conf.int=T, xlab = "Time (months)",
                   ylab = "Estimated\nsurvival function", 
                   legend.title = "Treatment arm",
                   legend.labs = c("placebo", "thiotepa"))

# Q2 
# Perform a log-rank test
# Null hypothesis: survival function is the same for placebo arm vs. thiotepa arm
thiotepa <- thiotepa %>% mutate(treatment = ifelse(rx == 2, 1, 0))
survdiff(tte ~ treatment, data = thiotepa)

# Q3
# Fit a Cox proportional hazard model
mod1 <- coxph(tte ~ treatment, data = thiotepa)
mod1

# Q4
# Fit a Cox proportional hazard model for treatment arm with 95% CI LRT
mod1 %>% confint %>% exp %>% round(4)

# Q6
# Fit a Cox proportional hazard model for treatment arms and initial tumour sizes 
# with 95% CI LRT
mod2 <- coxph(tte ~ treatment + size, data = thiotepa) 
mod2
mod2 %>% confint %>% exp %>% round(4)
