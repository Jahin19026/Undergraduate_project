library(tidyverse)
library(openxlsx)
library(rcompanion)

###Bi-variate Analysis

data <- read.xlsx("project data.xlsx")


data %>% 
  group_by(Affected_Commodities, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Affected_Commodities, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  labs(title = "Affected Commodity Prices in Overall Cost of Living",
       x = "Affected Commodities" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t<-table(data$Job_Status,data$Affected_Commodities)
chisq.test(t)
fisher.test(t, simulate.p.value = T)
cramerV(t) ## 0.08369




data %>% 
  group_by(Disposable_Income , Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x=Disposable_Income  , y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  scale_fill_manual(values = c("Government"= "black","Non-government" ="blue"))+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  labs(title = "Disposable Income in Overall Cost of Living",
       x = "Disposable Income " , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t1<-table(data$Job_Status, data$Disposable_Income)
chisq.test(t1)
cramerV(t1) ## 0.04152



data %>% 
  group_by(Job_Satisfaction, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Job_Satisfaction, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "black","Non-government" ="seagreen"))+
  labs(title ="Job Satisfaction in Overall Cost of Living",
       x = "Job Satisfaction" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t2<- table(data$Job_Status,data$Job_Satisfaction)
fisher.test(t2)
cramerV(t2) ## 0.1868
chisq.test(t2)



data %>% 
  group_by(Seeking_Additional_Sources_of_income, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Seeking_Additional_Sources_of_income, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "lightgreen","Non-government" ="skyblue"))+
  labs(title ="Impact of Job Status on the Pursuit of Additional Income",
       x = "Seeking Additional Sources of income" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t3<-table(data$Job_Status,data$Seeking_Additional_Sources_of_income)
chisq.test(t3)
cramerV(t3) ## 0.2656




data %>% 
  group_by(Financial_Planning_and_Savings_Habits, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Financial_Planning_and_Savings_Habits, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "orange","Non-government" ="violet"))+
  labs(title ="Impact of Job status on Financial Requirements",
       x = "Financial_Planning_and_Savings_Habits" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t4<-table(data$Job_Status,data$Financial_Planning_and_Savings_Habits)
chisq.test(t4)
cramerV(t4) ## 0.05554 




data %>% 
  group_by(Strategies_to_Mitigate_Financial_Impact, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Strategies_to_Mitigate_Financial_Impact, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "coral","Non-government" ="brown"))+
  labs(title ="Impact Of Job Status on Financial Strategies to Mitigate Overall Cost of Living",
       x = "Strategies_to_Mitigate_Financial_Impact" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)

t5<-table(data$Job_Status,data$Strategies_to_Mitigate_Financial_Impact)
chisq.test(t5)
cramerV(t5) ## 0.1702 



data %>% 
  group_by(Perceptions_of_Inflation_and_Economic_Stability, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Perceptions_of_Inflation_and_Economic_Stability, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "coral","Non-government" ="seagreen"))+
  labs(title ="Impact Of Job Status on Perceptions of Inflation and Economic Stability",
       x = "Perceptions of Inflation and Economic Stability" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t6<-table(data$Job_Status,data$Perceptions_of_Inflation_and_Economic_Stability)
chisq.test(t6)
cramerV(t6) ## 0.2045 




data %>% 
  group_by(Support_Needed_to_Cope_with_Financial_Impact, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Support_Needed_to_Cope_with_Financial_Impact, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "navy","Non-government" ="pink"))+
  labs(title ="Impact Of Job Status on Financial Support System",
       x = "Support Needed to Cope with Financial Impact" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t7<-table(data$Job_Status,data$Support_Needed_to_Cope_with_Financial_Impact)
chisq.test(t7)
cramerV(t7) ## 0.1694 




data %>% 
  group_by(Likelihood_of_Engaging_in_Collective_Bargaining_or_Labor_Actions, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Likelihood_of_Engaging_in_Collective_Bargaining_or_Labor_Actions, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "gold","Non-government" ="brown"))+
  labs(title ="Impact Of Job Status on Engaging in Collective Bargaining",
       x = "Likelihood_of_Engaging_in_Collective_Bargaining_or_Labor_Actions" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,150)
t8<-table(data$Job_Status,data$Likelihood_of_Engaging_in_Collective_Bargaining_or_Labor_Actions)
chisq.test(t8)
cramerV(t8) ## 0.3961 
fisher.test(t8, simulate.p.value = T)



data %>% 
  group_by(Mental_Health_and_Well_being_of_Employees, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Mental_Health_and_Well_being_of_Employees, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "skyblue","Non-government" ="purple"))+
  labs(title ="Impact Of Job Status on Mental Health and Well being of Employees",
       x = "Mental Health and Well being of Employees" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)
t9<-table(data$Job_Status,data$Mental_Health_and_Well_being_of_Employees)
fisher.test(t9)
cramerV(t9) ## 0.2601 
chisq.test(t9)



data %>% 
  group_by(Optimism_About_Long_term_Financial_Prospects, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Optimism_About_Long_term_Financial_Prospects, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "brown","Non-government" ="pink"))+
  labs(title ="Impact Of Job Status on Optimism About Long term Financial Prospects",
       x = "Optimism About Long term Financial Prospects" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,125)

t10<-table(data$Job_Status,data$Optimism_About_Long_term_Financial_Prospects)
chisq.test(t10)
cramerV(t10) ## 0.2754 
fisher.test(t10, simulate.p.value = T)



data %>% 
  group_by(Factors_Responsible_for_Variations, Job_Status) %>% 
  summarise(freq = n()) %>% 
  mutate(Job_Status = as.factor(Job_Status)) %>% 
  ggplot(aes(x= Factors_Responsible_for_Variations, y = freq, fill = Job_Status))+
  geom_bar(stat="identity", position = "dodge")+
  geom_text(aes(label = freq), position = position_dodge(0.9), vjust= -0.2)+
  scale_fill_manual(values = c("Government"= "navy","Non-government" ="skyblue"))+
  labs(title ="Impact Of Job Status on Factors Responsible for Variations",
       x = "Factors Responsible for Variations" , y = "Frequency")+
  theme(plot.title = element_text(hjust = 0.5))+
  ylim(0,80)

t11<-table(data$Job_Status,data$Factors_Responsible_for_Variations)
chisq.test(t11)
cramerV(t11) ## 0.06027 


