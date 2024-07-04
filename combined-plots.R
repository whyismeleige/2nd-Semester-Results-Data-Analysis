combined_graphs <- grid.arrange(python_analysis,
                                excel_analysis,
                                accounts_analysis,
                                english_analysis,
                                environment_analysis,
                                marketing)
ggsave("figs/combined-graphs.png",combined_graphs)