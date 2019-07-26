library(ggplot2)
interviews_plotting <- read_csv("~/R/Workshop/data-carpentry-r/data/interviews_plotting.csv")

ggplot(data = interviews_plotting)

ggplot(data = interviews_plotting, 
       aes(x = no_membrs, y = number_items))

ggplot(data = interviews_plotting, aes(x = no_membrs, y = number_items))

ggplot(data = interviews_plotting, aes(x = no_membrs, y = number_items)) +
  geom_point()

# Assign plot to a variable
interviews_plot <- ggplot(data = interviews_plotting, aes(x = no_membrs, y = number_items))

# Draw the plot
interviews_plot +
  geom_point()

## This is the correct syntax for adding layers
interviews_plot +
  geom_point()

## This will not add the new layer and will return an error message
interviews_plot
+ geom_point()

ggplot(data = interviews_plotting, aes(x = no_membrs, y = number_items)) +
  geom_jitter(aes(color = village), alpha = 0.5)

ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type, y = rooms)) +
  geom_boxplot(alpha = 0) +
  geom_jitter(alpha = 0.5, color = "tomato",
              width =0.2)

ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type, y = rooms)) +
  geom_jitter(alpha = 0.5, color = "tomato",
              width =0.2) + 
  geom_boxplot(alpha = 0)

# Excercise
ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type, y = rooms)) +
  geom_jitter(alpha = 0.5, color = "tomato",
              width =0.2) + 
  geom_violin(alpha = 0)

ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type, 
           y = liv_count)) +
  geom_jitter(alpha = 0.5, color = "tomato",
              width =0.2) + 
  geom_boxplot(alpha = 0)

ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type, 
           y = liv_count, color = memb_assoc)) +
  geom_jitter(alpha = 0.5,
              width =0.2) + 
  geom_boxplot(alpha = 0)

ggplot(data = interviews_plotting, 
       aes(x = respondent_wall_type, 
           y = liv_count)) +
  geom_jitter(alpha = 0.5, width =0.2,
              aes(color = memb_assoc), height=0.1) + 
  geom_boxplot(alpha = 0)

ggplot(interviews_plotting, 
       aes(x = respondent_wall_type)) +
  geom_bar()

ggplot(interviews_plotting, 
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village))

ggplot(interviews_plotting, 
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge")

ggplot(interviews_plotting, 
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge") +
  facet_grid(~village)

ggplot(interviews_plotting, 
       aes(x = respondent_wall_type)) +
  labs(x = "Wall Type", y = "Count") +
  geom_bar(aes(fill = village), position = "dodge") +
  facet_grid(memb_assoc~village)

p <- ggplot(interviews_plotting, 
       aes(x = respondent_wall_type)) +
  labs(x = "Wall Type", y = "Count") +
  geom_bar(aes(fill = village), position = "dodge") +
  facet_grid(memb_assoc~village) + theme(axis.text.x = element_text(angle = 90))
p
p + theme(legend.position = "none")
ggplot(interviews_plotting, 
       aes(x = respondent_wall_type)) +
  labs(x = "Wall Type", y = "Count") +
  geom_bar(aes(fill = village), position = "dodge") +
  facet_grid(memb_assoc~village) + theme(axis.text.x = element_text(angle = 90))
