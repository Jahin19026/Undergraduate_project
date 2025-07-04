# Impact of Rising Commodities Prices due to Russia-Ukraine War on Government and Non-Government Employees

This project analyzes how job status (Government vs Non-government employment) influences various financial, social, and psychological dimensions related to the rising cost of living in Bangladesh. The analysis is based on primary survey data collected for my undergraduate thesis project.

## 📊 Objective

To explore whether there are statistically significant differences in the financial behavior, economic perceptions, and coping strategies between government and non-government employees.

## 📁 Dataset

The dataset (`project data.xlsx`) consists of survey responses from government and non-government employees, covering variables like:
- Affected Commodities
- Disposable Income
- Job Satisfaction
- Financial Planning
- Coping Strategies
- Mental Health
- Economic Optimism
... and more.

## 🛠️ Methods Used

The R script includes:
- Data grouping and frequency calculation using `dplyr`
- Data visualization using `ggplot2`
- Statistical tests: 
  - **Chi-square test** to assess associations
  - **Fisher's Exact Test** (for small expected frequencies)
  - **Cramér’s V** to measure the strength of association

## 📈 Visualizations

Bar plots were generated for each variable, grouped by Job Status, showing frequency counts and annotated with exact values for clarity.

![image](https://github.com/user-attachments/assets/3968f7e7-d2cb-4ac6-8a3f-03a0f54cd10d)
![image](https://github.com/user-attachments/assets/0affa3a5-e349-40d4-91ae-357028527c96)
![image](https://github.com/user-attachments/assets/c7929d9b-ab0e-4016-93bf-4362f13c7531)
![image](https://github.com/user-attachments/assets/93a38a17-f31e-4e7a-813e-a7c2004f9231)
![image](https://github.com/user-attachments/assets/5fda8981-9452-4c8f-94ae-e6766e8463b0)



## 📦 R Packages Used

- `tidyverse`
- `openxlsx`
- `rcompanion` (for Cramér's V)


