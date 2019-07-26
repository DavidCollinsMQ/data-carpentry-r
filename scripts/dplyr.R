library(dplyr)
library(tidyr)

interviews <- read_csv("data/SAFI_clean.csv", na="NULL")

select(interviews, village, no_membrs, years_liv)
filter(interviews, village == "God", no_membrs >6)

# Excercise
interviews %>%
  filter(memb_assoc == "yes") %>%
  select(affect_conflicts, liv_count, no_meals)

# Mutate
interviews %>%
  mutate(people_per_room = no_membrs / rooms)

interviews %>%
  filter(!is.na(memb_assoc)) %>%
  mutate(people_per_room = no_membrs / rooms)

interviews_total_meals <- interviews %>%
  mutate(total_meals = no_membrs * no_meals) %>%
  filter(total_meals > 20) %>%
  select(village, total_meals)

interviews_total_meals
