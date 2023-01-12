download.file("https://gist.githubusercontent.com/slopp/ce3b90b9168f2f921784de84fa445651/raw/4ecf3041f0ed4913e7c230758733948bc561f434/penguins.csv",
              "data-raw/penguins.csv", mode = "wb")

# import data
penguins <- read_csv("data-raw/penguins.csv")

# view data
View(penguins)

# print out first few rows
head(penguins)

# get summary
summary(penguins)

# average body mass in g
mean(penguins$body_mass_g, na.rm = TRUE)

# number of penguins with flipper length greather than 200mm
sum(penguins$flipper_length_mm > 200, na.rm = TRUE)

# table showing the number of penguins by island
table(penguins$island)