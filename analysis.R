# make dataset

df <- data.frame(x = rnorm(50, 15, 4), 
                 group = rep(c("group1", "group2"), each = 25))
view(df)
library(tidyverse)

# how to tidy data
haff2<- chaff%>% 
  pivot_longer(names_to = "sex", 
               values_to = "mass",
               cols = everything())

# how to summarise data
df %>% group_by(group) %>%
  summarise(mean = mean(x),
            n = length(n),
            sdev = sd(x))

#making a plot
df %>% ggplot(aes(x = group, y = x)) +
      geom_boxplot()
