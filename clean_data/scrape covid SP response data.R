# Scrape data on covid social protection responses


# import libraries
library(tidyverse)
library(readxl)


path <- "C:/Users/dougj/Documents/Data"
file <- "covid_SP_responses2.xlsx"
covsp <- read_excel(file.path(path, file))

covsp <- covsp %>% rename(country = Country,
                          type = "Core COVID19 measure",
                          description = "Descriptive summary")



# drop rows where all vars are NA
covsp <- covsp %>% filter_all(any_vars(!is.na(.)))

# concatenate description text
j <- 1
for (i in 2:nrow(covsp)) {
  if (is.na(covsp[["type"]][i])) {
    covsp$description[j] <- paste(covsp$description[j], covsp$description[i])
    covsp$description[i] <- NA
  }
  else {
    j <- i
  }
}




# need to go row by row and get the lag
for (i in 2:nrow(covsp)) {
  for (var in c("country", "category", "type")) {
    if (is.na(covsp[[var]][i])) {
      covsp[[var]][i] <- covsp[[var]][i-1]
    }
  }
}


covsp <- covsp %>% filter(!is.na(description) & (nchar(category)<50) & (nchar(type)<50))


# clean up category and types
covsp <- covsp %>% 
  mutate(category = str_to_title(category), type = str_to_title(type)) %>% 
  mutate(category = recode(category, "Labor Markets" = "Labor Market"))

write_csv(covsp, path = file.path(path, "ugo_cleaned.csv"))

          