library(tidyverse)
library(ggthemes)
library(extrafont)

head(results,10)
python_analysis <- results %>% group_by(Python) %>% summarize(Students = n()) %>% ggplot(aes(Python,Students)) +
  geom_col() + 
  xlab("SGPA of Students") + 
  ylab("Number of Students") + 
  ggtitle("Student Results in Python") +
  theme_wsj() +
  theme(legend.position = "none",text = element_text(size = 10))
python_analysis
ggsave("figs/python-results.png")

marketing <- results %>% group_by(Marketing) %>% summarize(Students = n()) %>% ggplot(aes(Marketing,Students)) +
  geom_col() + 
  xlab("SGPA of Students") + 
  ylab("Number of Students") + 
  ggtitle("Principles of Marketing") +
  theme_wsj() +
  theme(legend.position = "none",text = element_text(size = 10))
marketing
ggsave("figs/marketing-results.png",plot = marketing)

environment_analysis <- results %>% group_by(Environment) %>% summarize(Students = n()) %>% ggplot(aes(Environment,Students)) +
  geom_col() + 
  xlab("SGPA of Students") + 
  ylab("Number of Students") + 
  ggtitle("Environmental Studies") +
  theme_wsj() +
  theme(legend.position = "none",text = element_text(size = 10))
environment_analysis
ggsave("figs/environmental-studies.png",plot = environment_analysis)

english_analysis <- results %>% group_by(English) %>% summarize(Students = n()) %>% ggplot(aes(English,Students)) +
  geom_col() + 
  xlab("SGPA of Students") + 
  ylab("Number of Students") + 
  ggtitle("English Results") +
  theme_wsj() +
  theme(legend.position = "none",text = element_text(size = 10))
english_analysis
ggsave("figs/english-results.png",plot = english_analysis)

accounts_analysis <- results %>% group_by(Accounting) %>% summarize(Students = n()) %>% ggplot(aes(Accounting,Students)) +
  geom_col() + 
  xlab("SGPA of Students") + 
  ylab("Number of Students") + 
  ggtitle("Accounting Results") +
  theme_wsj() +
  theme(legend.position = "none",text = element_text(size = 10))
accounts_analysis
ggsave("figs/accounting-results.png",plot = accounts_analysis)

excel_analysis <- results %>% group_by(Excel) %>% summarize(Students = n()) %>% ggplot(aes(Excel,Students)) +
  geom_col() + 
  xlab("SGPA of Students") + 
  ylab("Number of Students") + 
  ggtitle("BDS Excel Results") +
  theme_wsj() +
  theme(legend.position = "none",text = element_text(size = 10))
excel_analysis
ggsave("figs/excel-results.png",plot = excel_analysis)
