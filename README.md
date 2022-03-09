# BIOST 515/518: Homework 7
#### Instructor:  Amy Willis

## Instructions

Submit your responses to the below questions as a single pdf file to Canvas. As in previous homeworks, your
responses should have two sections:

1. “Responses”, where you respond to the questions, using figures and tables where appropriate.
2. “Code”, an appendix containing code used to run your analyses and support your responses.

You are welcome to use the homework submission template (Files →Homeworks →submission-template.Rmd) to prepare your responses, but this is not mandatory. Please note that credit will not be given for code and raw software output. Instead, you should use software to run analyses and prepare tables, figures, and/or
other summaries of results as appropriate.

Please thoughtfully organize your homework and answer in full sentences using professional, scientific writing. Tables and numeric information should be appropriate for inclusion in a scientific report, with appropriate rounding, and figures should be polished (e.g., with axes labelled and legends included). Please review the
published homeworks keys for both content and style.

A key purpose of this homework (and all homeworks) is to work on Learning Goal #4: Practice explaining our models and their interpretations to both statistical and non-statistical audiences, so please use this opportunity to practice communicating clearly and justifying your scientific and statistical work.

## Background

In the 1970’s, the Veterans Administration Cooperative Urological Research Group conducted a clinical trial to investigate various treatments to prevent the recurrence of bladder cancer. In this assignment, we will use the study data to compare the distribution of time to first cancer recurrence for patients treated with thiotepa, a chemotherapy drug, compared to a placebo. All patients had superficial bladder tumors when they entered the trial, which were removed transurethrally and patients were randomly assigned to a treatment arm. The time to first recurrence data for participants enrolled in either the placebo or thiotepa arms are available on the Canvas course website in the file thiotepa.csv.

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
