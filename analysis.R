# make dataset

df <- data.frame(x = rnorm(50, 15, 4), 
                 group = rep(c("group1", "group2"), each = 25))
view(df)
library(tidyverse)

df %>% group_by(group) %>%
  summarise(mean = mean(x),
            n = length(n),
            sd = sd(x))

df %>% ggplot(aes(x = group, y = x)) +
      geom_boxplot()
