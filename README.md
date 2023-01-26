# Survival anaylsis on time to first cancer recurrence for patients treated with thiotepa compared to a placebo
#### BIOST 515/518 Assignment 7
#### Instructor:  Amy Willis

## Background

In the 1970’s, the Veterans Administration Cooperative Urological Research Group conducted a clinical trial to investigate various treatments to prevent the recurrence of bladder cancer. In this assignment, we will use the study data to compare the distribution of time to first cancer recurrence for patients treated with thiotepa, a chemotherapy drug, compared to a placebo. All patients had superficial bladder tumors when they entered the trial, which were removed transurethrally and patients were randomly assigned to a treatment arm. The time to first recurrence data for participants enrolled in either the placebo or thiotepa arms are available in the file thiotepa.csv.

## Dataset

The variables in this dataset are as follows:
- ***id***: A unique patient identifier
- ***rx***: Treatment arm. 1=placebo, 2=thiotepa.
- ***number***: Initial number of tumours (8 indicates “8 or more tumors”)
- ***size***: size of largest initial tumour (in centimetres)
- ***stop***: time of first tumor recurrence or time of censoring event
- ***event***: an indicator for a relapse event. 1=relapse, 0=censoring.

## Questions

1. Construct Kaplan-Meier curves for the placebo and thiotepa arms. Describe and compare the curves.
2. Use a log-rank test to compare the distribution of time to relapse in the two treatment arms. In language suitable for a scientific publication, summarise your findings.
3. Fit a Cox proportional hazards model with treatment arm as the predictor. Write out the fitted model, and interpret the parameters of your model (including the baseline hazard).
4. Using the Cox model that you fit in (3), perform full inference on the hazard ratio for relapse, summarising your findings in language suitable for scientific publication.
5. Are null hypotheses that you tested in (2) and (4) the same? Explain.
6. Now fit a Cox proportional hazards model with treatment arm and size of largest initial tumour as predictors. Write out the fitted model, and interpret the parameters of your model.
7. A colleague asks if size of the largest tumor (pre-treatment) is a potential confounder for time to relapse.
What do you think and why?
