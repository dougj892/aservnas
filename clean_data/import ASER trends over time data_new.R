# Import and clean ASER trends over time data



# This script imports data from ASER's 2014 trends over time report which 
# includes various indicators for each state for the period 2006-2014. 
# This script uses data that I scraped from the individual state reports 
# (i.e. the state pdfs) using the tabula program.  Note to future self: 
# to run the tabula program, you first download and install Java.  
# you then download and extract the tabula program.  you don't seem to 
# actually have to install the tabula program.  i have created a template 
# in tabula which automajically selects the appropriate data from each state's report.

# Lastly, note that after creating each of the csv files using tabula, i manually corrected some 
# of the csvs because tabula missed the starting year in a few tables


# import packages
library(tidyverse)

raw <- "C:/Users/dougj/Documents/Data/Education/ASER trends over time/tabula output"

files <- list.files(raw)

if (exists("full")) {
  rm(full)
}

# Loop through each of the files outputted by tabula
for (file in files) {
  print(file)
  df <- read_csv(file.path(raw, file), col_names = FALSE)
  # Convert all columns to numeric
  df <- df %>% mutate_all(funs(as.numeric))
  # Rename X1 year and create a "table" variable. The table variable indicates the ASER report table number
  df <- df %>% rename(year = X1) %>% mutate(table = 1)
  # Identify where a new table starts by looking at rows where the year number is not greater than year in previous row
  iterator <- 1
  for (i in 2:nrow(df)) {
    if (df$year[i] < df$year[i-1]) {
      iterator = iterator + 1
    }
    df$table[i] <- iterator
  }
  # Reshape the dataset to wide. Note that many of the 
  df <- df %>% pivot_wider(names_from = table, values_from = c("X2","X3","X4","X5","X6","X7"), names_prefix = "tab")
  # Create a variable for state name (from the file name).
  df <- df %>% mutate(State_old = file)
  if (!exists("full")) {
    full <- df
    print("wrote over full")
  } else {
    full <- full %>% bind_rows(df)
    print("appended full")
  }
}

# Define a function to check whether all values are NA
not_all_na <- function(x) any(!is.na(x))

# Drop any columns for which all of the values are NA
full <- full %>% select_if(not_all_na)

# clean up the state variable
full <- full %>% separate(State_old, into = c("scrap","temp"), sep = "-") %>% separate(temp, into = c("State","scrap2"), sep = "\\.")
# drop intermediate columns
full <- full %>% select(-scrap, -scrap2)

# Do a batch rename. See the excel doc "tabula-andhrapradesh - with notes" for more info
full <- full %>%
  rename(num_dists=X2_tab1,
         num_villages=X3_tab1,
         num_hhs=X4_tab1,
         not_enrolled=X7_tab2,
         pvt_boys=X3_tab3,
         pvt_girls=X5_tab3,
         pvt=X7_tab3,
         std3_read_std1_all=X3_tab4,
         std3_read_std1_govt=X3_tab5,
         std3_read_std1_pvt=X5_tab5,
         std5_read_std2_all=X3_tab6,
         std5_read_std2_govt=X3_tab7,
         std5_read_std2_pvt=X5_tab7,
         std3_subtract_all=X3_tab8,
         std3_subtract_govt=X3_tab9,
         std3_subtract_pvt=X5_tab9,
         std5_divis_all=X3_tab10,
         std5_divis_govt=X3_tab11,
         std5_divis_pvt=X5_tab11)

# Strip the columns with the nationwide figures for one state so that i 
# create a dataframe for country-wide figures later
country <- full %>% 
  filter(State == "andhrapradesh") %>% 
  select(year, starts_with("X")) %>% 
  rename(not_enrolled=X6_tab2,
         pvt_boys=X2_tab3,
         pvt_girls=X4_tab3,
         pvt=X6_tab3,
         std3_read_std1_all=X2_tab4,
         std3_read_std1_govt=X2_tab5,
         std3_read_std1_pvt=X4_tab5,
         std5_read_std2_all=X2_tab6,
         std5_read_std2_govt=X2_tab7,
         std5_read_std2_pvt=X4_tab7,
         std3_subtract_all=X2_tab8,
         std3_subtract_govt=X2_tab9,
         std3_subtract_pvt=X4_tab9,
         std5_divis_all=X2_tab10,
         std5_divis_govt=X2_tab11,
         std5_divis_pvt=X4_tab11) %>% 
  select(-starts_with("X"))

# Drop all unnamed variables in full dataset
full <- full %>% select(-starts_with("X"))

# Divide all variables in full dataset by 100 excep state, num*, and year
divide.by.100 <- function(x, na.rm=FALSE) (x/100)
cols <- setdiff(names(full), c("num_dists", "num_hhs", "num_villages", "year", "State"))
full <- full %>% mutate_at(cols, divide.by.100)

# create variable for state abbrev
full$state_abbr <- recode(full$State, "andhrapradesh" = "AP", 
                          "arunachalpradesh" = "AR", 
                          "assam" = "AS",
                          "bihar" = "BR",
                          "chhattisgarh" = "CG",
                          "gujarat" = "GJ", 
                          "haryana" = "HR",
                          "himachalpradesh" = "HP",
                          "jammuandkashmir" = "JK",
                          "jharkhand" = "JH",
                          "karnataka" = "KA",
                          "kerala" = "KL",
                          "madhyapradesh" = "MP",
                          "maharashtra" = "MH",
                          "manipur" = "MN", 
                          "meghalaya" = "ML",
                          "mizoram" = "MZ",
                          "nagaland" = "NL",
                          "odisha" = "OR",
                          "punjab" = "PB", 
                          "rajasthan" = "RJ",
                          "sikkim" = "SK",
                          "tamilnadu" = "TN",
                          "tripura" = "TR",
                          "uttarakhand" = "UK",
                          "uttarpradesh" = "UP",
                          "westbengal" = "WB")


write_csv(full, "C:/Users/dougj/Documents/Data/Education/ASER trends over time/aser_trends.csv")

# divide all variables except year by 100 in national dataset 
cols_country <- setdiff(names(country), c("year"))
country <- country %>% mutate_at(cols_country, divide.by.100)



# save the nationwide dataset
write_csv(country, "C:/Users/dougj/Documents/Data/Education/ASER trends over time/aser_trends_national.csv")




