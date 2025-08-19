# Impact of Rising Commodities Prices due to Russia-Ukraine War on Government and Non-Government Employees

This project analyzes how job status (Government vs Non-government employment) influences various financial, social, and psychological dimensions related to the rising cost of living in Bangladesh. The analysis is based on primary survey data collected for my undergraduate thesis project.

## 📊 Objective

* To find out the impact of commodities prices due to Russia-Ukraine war. 
* To explore the impact of commodities prices on government and non-government employees by univariate analysis. 
* To examine the association between rising commodities prices on government and non-government employees due to Russia-Ukraine war.
* Analyzes the relationship between monthly income, job status, mental health factors, and monthly expenditure to identify key predictors of household spending patterns and provide insights into financial behavior
  
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

## 📈 Visualizations of Bivariate Analysis

Bar plots were generated for each variable, grouped by Job Status, showing frequency counts and annotated with exact values for clarity.

![image](https://github.com/user-attachments/assets/3968f7e7-d2cb-4ac6-8a3f-03a0f54cd10d)
![image](https://github.com/user-attachments/assets/0affa3a5-e349-40d4-91ae-357028527c96)
![image](https://github.com/user-attachments/assets/c7929d9b-ab0e-4016-93bf-4362f13c7531)
![image](https://github.com/user-attachments/assets/93a38a17-f31e-4e7a-813e-a7c2004f9231)
![image](https://github.com/user-attachments/assets/5fda8981-9452-4c8f-94ae-e6766e8463b0)



## 📦 R Packages Used for bivariate analysis

- `tidyverse`
- `openxlsx`
- `rcompanion` (for Cramér's V)


# Multiple Regression Analysis
# Monthly Expenditure Analysis

## Overview

This project analyzes the relationship between monthly income, job status, mental health factors, and monthly expenditure using survey data. The goal is to identify key predictors of household spending patterns and provide insights into financial behavior.

---

## Dataset

The dataset contains information on individuals’ monthly income, monthly expenditure, job status, and mental health concerns. Key variables include:

* `Monthly_income` – reported income range of the respondent.
* `Monthly_expenditure` – reported expenditure range of the respondent.
* `Job_Status` – type of employment (Government / Non-government).
* `Mental_Health` – financial stress and other concerns (e.g., Inflation Concerns, Job Insecurity).

The income and expenditure ranges were converted to numeric midpoints for analysis.

---

## Analysis

1. **Data Cleaning:**

   * Standardized dash characters in income and expenditure ranges.
   * Converted categorical income/expenditure ranges into numeric midpoints.

2. **Regression Model:**

   * **Dependent variable:** `Monthly_expenditure_num`
   * **Independent variables:** `Monthly_income_num`, `Job_Status`, `Mental_Health`
   * **Model:** Linear regression

3. **Results:**

   * **Income** is the strongest predictor of monthly expenditure.
   * **Job status** shows a marginal effect (non-government workers spend slightly more).
   * **Mental health factors** were not statistically significant predictors in this dataset.
   * The model explains \~77% of the variance in expenditure (Adjusted R² = 0.7637).
  


<img width="1366" height="729" alt="image" src="https://github.com/user-attachments/assets/a5df316e-406a-4287-9082-f9662a5cefb6" />


These are the standard **diagnostic plots for a linear regression model** in R (`plot(lm_model)`), and they help assess assumptions like linearity, normality, homoscedasticity, and influential points. Let’s interpret each one:

---

### **1️⃣ Residuals vs Fitted (top-left)**

* **Purpose:** Checks linearity and homoscedasticity (constant variance).
* **Observation:**

  * Residuals are scattered around zero, but there is **some spread at higher fitted values**, suggesting mild heteroscedasticity.
  * No clear curve, so the **linear model assumption is mostly okay**, but variance is slightly higher for larger expenditures.

---

### **2️⃣ Q-Q Plot (top-right)**

* **Purpose:** Checks if residuals are approximately normally distributed.
* **Observation:**

  * Most points lie along the straight line → residuals are **roughly normal**.
  * Slight deviation at the tails (points labeled 840, 137, 83) → minor outliers or heavy tails.
  * Overall, normality assumption is **acceptable**.

---

### **3️⃣ Scale-Location / Spread-Location (bottom-left)**

* **Purpose:** Checks homoscedasticity (constant variance of residuals).
* **Observation:**

  * Plot shows `√|Standardized residuals|` vs fitted values.
  * Slight upward trend at higher fitted values → **variance increases with predicted expenditure**.
  * Mild heteroscedasticity exists, but not severe.

---

### **4️⃣ Residuals vs Leverage (bottom-right)**

* **Purpose:** Identifies **influential points** using leverage and Cook’s distance.
* **Observation:**

  * Most points are well below Cook’s distance lines.
  * A few points (e.g., 83, 230) have higher leverage or influence.
  * These points might **disproportionately affect the regression coefficients**. Consider checking or performing sensitivity analysis.

---

### **✅ Overall Interpretation**

1. **Linearity:** Mostly satisfied.
2. **Normality:** Acceptable, minor tail deviations.
3. **Homoscedasticity:** Mild heteroscedasticity at high fitted values.
4. **Influential points:** A few points have high leverage; they may slightly affect estimates.

