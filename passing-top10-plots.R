head(results)

passing_graph <- results %>% filter(!is.na(SGPA))%>% 
  mutate(`Name of Student` = reorder(`Name of Student`,SGPA)) %>%
  arrange(desc(SGPA)) %>%
  ggplot(aes(`Name of Student`,SGPA)) +
  geom_bar(stat = "identity") +
  coord_flip() + 
  theme_economist() + 
  theme(text = element_text(size = 10)) + 
  ggtitle("Passing Students") 
passing_graph
ggsave("figs/passing-students.png",plot = passing_graph)

top_10_graph <- results %>% filter(!is.na(SGPA))%>% 
  mutate(`Name of Student` = reorder(`Name of Student`,SGPA)) %>%
  arrange(desc(SGPA)) %>%
  head(10) %>%
  ggplot(aes(`Name of Student`,SGPA)) +
  geom_bar(stat = "identity") +
  coord_flip() + 
  theme_economist() + 
  theme(text = element_text(size = 10)) + 
  ggtitle("Passing Students")
top_10_graph
top_10 <- results %>% filter(!is.na(SGPA))%>% 
  mutate(`Name of Student` = reorder(`Name of Student`,SGPA)) %>%
  arrange(desc(SGPA)) %>%
  head(10)
top_10
save(top_10,file = "data-objects/top-10.rda")

