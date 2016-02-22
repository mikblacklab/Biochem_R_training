# load required packages
library(ggplot2)
library(dplyr)

# read in survey data
surveys_raw <- read.csv("http://files.figshare.com/1919744/surveys.csv")

# list variable names
names(surveys_raw)

# how many observations?
nrow(surveys_raw)

# filter out missing values
surveys_complete <- surveys_raw %>%
                    filter(species_id != "") %>%        # remove missing species_id
                    filter(!is.na(weight)) %>%          # remove missing weight
                    filter(!is.na(hindfoot_length))     # remove missing hindfoot_length

# how many observations now?
nrow(surveys_complete)

# count records per species
species_counts <- surveys_complete %>%
                  group_by(species_id) %>%
                  tally

# check counts
head(species_counts)

# get names of those frequent species
frequent_species <- species_counts %>%
                    filter(n >= 10) %>%
                    select(species_id)

# select only the frequent species
surveys_complete <- surveys_complete %>%
           filter(species_id %in% frequent_species$species_id)

# how many observations now?
nrow(surveys_complete)

# boxplot of weight by species
ggplot(data = surveys_complete, aes(x = species_id,  y = weight)) +
                   geom_boxplot()
# cooler boxplot of weight by species
ggplot(data = surveys_complete, aes(x = species_id, y = weight)) +
                   geom_jitter(alpha = 0.3, color = "tomato") +
                   geom_boxplot(alpha = 0)
