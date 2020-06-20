# Import and clean ASER district data

# import packages
library(tidyverse)
library(readxl)

root <- "C:/Users/dougj/Documents/Data/Education/ASER District Data/Raw"

# We have to read in every year separately because the date changes slightly every year.
# Fortunately, all years from 2006 to 2011 have the following columns:
# 1. ages 3-4 in anganwadi or pre-school (though for 2006 this is ages 3-5)
# 2. ages 6-14 out of school
# 3. ages 6-14 in private school
# 4. std 1 and 2 can letters and up
# 5. std 1 and 2 can recognize numbers and up
# 5. std 3-5 caan read std 1 text and up
# 6. std 3-5 can do subtraction and up


# 2006
path <- file.path(root, "2006districtpage.xlsx")
df_2006 <- path %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,path = path, skip = 2,  col_types = c("text",rep("numeric",8)), col_names = FALSE, .id = "State")
names(df_2006) <- c("State", "District", "in_school_3_4", "out_of_school_6_14", "private_6_14",
               "mother_read", "std12_letters_and_up", "std12_numbers_and_up", "std35_std1_and_up","std35_subtraction_and_up")
df_2006$year <- 2006
# remove the totals and rows with NAs
df_2006 <- df_2006 %>% filter(District != "Total" & !is.na(std35_std1_and_up))


# 2007
path <- file.path(root, "2007districtpage.xlsx")
df_2007 <- path %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,path = path, skip = 2,  col_types = c("text",rep("numeric",9)), col_names = FALSE, .id = "State") 
names(df_2007) <- c("State", "District", "in_school_3_4", "out_of_school_6_14", "private_6_14", 
                    "std12_letters_and_up", "std12_numbers_and_up", "std12_english_letters",
                    "std35_std1_and_up","std35_subtraction_and_up", "std35_english_sentences")
df_2007$year <- 2007
# remove the totals and rows with NAs
df_2007 <- df_2007 %>% filter(District != "Total" & !is.na(std35_std1_and_up))




# 2008
path <- file.path(root, "2008districtpage.xlsx")
df_2008 <- path %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,path = path, skip = 2,  col_types = c("text",rep("numeric",9)), col_names = FALSE, .id = "State") 
names(df_2008) <- c("State", "District", "in_school_3_4", "out_of_school_6_14", "private_6_14", 
                    "std12_letters_and_up", "std12_numbers_and_up", "std35_std1_and_up","std35_subtraction_and_up", 
                    "std35_tmie", "std35_currency")
df_2008$year <- 2008
# remove the totals and rows with NAs
df_2008 <- df_2008 %>% filter(District != "Total" & !is.na(std35_std1_and_up))



# 2009
path <- file.path(root, "2009districtpage.xlsx")
df_2009 <- path %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,path = path, skip = 2,  col_types = c("text",rep("numeric",11)), col_names = FALSE, .id = "State") 
names(df_2009) <- c("State", "District", "in_school_3_4", "out_of_school_6_14", "private_6_14", 
                    "std48_tuition", "mother_read",
                    "std12_letters_and_up", "std12_numbers_and_up", "std12_english_letters", 
                    "std35_std1_and_up","std35_subtraction_and_up", "std35_english_sentences")
df_2009$year <- 2009
# remove the totals and rows with NAs
df_2009 <- df_2009 %>% filter(District != "Total" & !is.na(std35_std1_and_up))


# 2010
path <- file.path(root, "2010districtpage.xlsx")
df_2010 <- path %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,path = path, skip = 3,  col_types = c("text",rep("numeric",12)), col_names = FALSE, .id = "State") 
names(df_2010) <- c("State", "District", "in_school_3_4", "out_of_school_6_14", "private_6_14", 
                    "std48_tuition", 
                    "std12_letters_and_up", "std12_numbers_and_up", 
                    "std35_std1_and_up","std35_subtraction_and_up", 
                    "std58_menu", "std58_calendar", "std58_area", "std58_estimation")
df_2010$year <- 2010
# remove the totals and rows with NAs
df_2010 <- df_2010 %>% filter(District != "Total" & !is.na(std35_std1_and_up))



# 2011
path <- file.path(root, "2011districtpage.xlsx")
df_2011 <- path %>%
  excel_sheets() %>%
  set_names() %>%
  map_df(read_excel,path = path, skip = 2,  col_types = c("text",rep("numeric",6)), col_names = FALSE, .id = "State") 
names(df_2011) <- c("State", "State_District", "out_of_school_6_14", "private_6_14", 
                    "std12_letters_and_up", "std12_numbers_and_up", 
                    "std35_std1_and_up","std35_subtraction_and_up")
df_2011$year <- 2011
# remove the totals and rows with NAs
df_2011 <- df_2011 %>% filter(State_District != "Total" & !is.na(std35_std1_and_up))
# remove the State name from the district name
df_2011 <- df_2011 %>% separate(State_District, c("temp", "District"), sep = "-")

# append all of the dataframes into a single one
df <- bind_rows(df_2006, df_2007, df_2008, df_2009, df_2010, df_2011)

# clean up state names -- this is one option, but hopefully there are better ones
df$State <- recode(df$State, AP= "Andhra Pradesh", "Andhra pradesh" = "Andhra Pradesh",
                   "Arunchal" = "Arunachal Pradesh", "Arunchal pradesh" = "Arunachal Pradesh",  "Arunchal Pradesh" = "Arunachal Pradesh", "ARunchal pradesh"= "Arunachal Pradesh",
                   "Chattishgarh" = "Chattisgarh", "Gujrat" = "Gujarat", "Karnatak"= "Karnataka", "Karnatka" = "Karnataka",
                   "Orissa" = "Odisha", "Orrissa" = "Odisha",  "Pondhicherry" = "Pondicherry", "Pudhucherry" = "Pondicherry",
                   "Rajashtan" = "Rajasthan",  "Uttrakhand" ="Uttarakhand",
                   "Dadar nagar haweli" = "Dadar nagar haweli",
                   "Dadar nagar haweli" = "Dadar nagar haweli",
                   "Dadar Nagar Haweli" = "Dadar nagar haweli",
                   "Dadra nagar haweli" = "Dadar nagar haweli",
                   "Daman & diu" = "Daman Diu",
                   "Daman & Diu" = "Daman Diu",
                   "Daman &Diu" = "Daman Diu")


# Clean up district names
# remove asterisks
df$District <- gsub("[*]", "", df$District)
# replace two spaces with a single space
df$District <- gsub("  ", " ", df$District)
# Anywhere there is a lower case and then upper case insert a space in between
df$District <- gsub("([a-z])([A-Z])", "\\1 \\2", df$District)

# Remove any leading and trailing spaces
df$District <- gsub("[\t]+$", "", df$District)
df$District <- gsub("^[\t]+", "", df$District)

df$District <- recode(df$District, "Ahmadabad"="Ahmedabad",
                      "Ahmadnagar"="Ahmednagar",
                      "Alappuzha"="Alappuzha ",
                      "Bara Banki"="Barabanki",
                      "Barabanki "="Barabanki",
                      "Baragarh"="Bargarh",
                      "Barddhaman"="Bardhaman",
                      "Bathinda"="Bathinda ",
                      "Bauda"="Baudh",
                      "Beed"="Bid",
                      "Bhatinda"="Bathinda",
                      "Boudh"="Baudh",
                      "Chamaraj Nagar"="Chamarajanagar",
                      "Chickmagalur"="Chikmagalur",
                      "Dahod"="Dohad",
                      "Dakshin Kannada"="Dakshina Kannada",
                      "Darjeeling"="Darjiling",
                      "Davanagere"="Davangere",
                      "Debagarh"="Deogarh",
                      "Dharmapuri"="Dharmapuri",
                      "Dindigul"="Dindigul",
                      "Dumka"="DUMKA",
                      "East Garo Hill"="East Garo Hills",
                      "East Khasi Hill"="East Khasi Hills",
                      "East Khasi Hills "="East Khasi Hills",
                      "Farrukhabad"="Farukkhabad",
                      "Gondia"="Gondiya",
                      "Gumla"="GUMLA",
                      "Haora"="Howrah",
                      "Hazaribag"="Hazaribagh",
                      "Hoogli"="Hoogly",
                      "Hugli"="Hoogly",
                      "Jahanabad"="Jehanabad",
                      "Jaintia Hill"="Jaintia Hills",
                      "Jaintia Hills "="Jaintia Hills",
                      "Jhunjhunu"="Jhunjhunun",
                      "Junagadh"="Junagadh",
                      "Kabirdham (Kawardha)"="Kawardha",
                      "Kaimur (Bhabua)"="Kaimur(Bhabua)",
                      "Kanniyakumari"="Kanyakumari",
                      "Kapurthala"="Kapurthala",
                      "Karbi Anglang"="Karbi Anglong",
                      "Kasaragod"="Kasargod",
                      "Kendrapara"="Kendraparha",
                      "Kiphire"="Kiphire",
                      "Koch Bihar"="Koch Bihar",
                      "Kodarma"="Koderma",
                      "Kooch Behar"="Koch Bihar",
                      "Koraput"="Koraput",
                      "Korea"="Koriya",
                      "Kozhikode"="Kozhikode (Calicut)",
                      "Lahaul and Spiti"="Lahul & Spiti",
                      "Lahul&Spiti"="Lahul & Spiti",
                      "Latehar"="LATEHAR",
                      "Logleng"="Longleng",
                      "Lohardaga"="Lohardagga",
                      "Maharajganj"="Mahrajganj",
                      "Mahesana"="Mehsana",
                      "Malda"="Maldah",
                      "Narsimhapur"="Narsinhpur",
                      "Narsinghpur"="Narsinhpur",
                      "Narsinpur"="Narsinhpur",
                      "Nawanshahr"="Nawashehar",
                      "Nawanshehar"="Nawashehar",
                      "Nawashehar( SBS Nagar)"="Nawashehar",
                      "Neemach"="Neemuch",
                      "North 24 -Parganas"="North 24 Parganas",
                      "North Cachar Hill"="North Cachar Hills",
                      "North Twenty Four Parg"="North 24 Parganas",
                      "Nuapada"="Nuaparha",
                      "Pakaur"="Pakur",
                      "Palamau"="Palamu",
                      "PALAMU"="Palamu",
                      "Panch Mahal"="Panch Mahals",
                      "Pashchim Champaran"="Pashchimi Champaran",
                      "Pondicherry"="Puducherry",
                      "Purba Champaran"="Purbi Champaran",
                      "Purbi Singhbhum"="East Singhbhum",
                      "Raigad"="Raigarh",
                      "Rajasamand"="Rajsamand",
                      "Ramanathapuram"="Ramanathapuram",
                      "Rangareddi"="Rangareddy",
                      "Rayagada"="Rayagarha",
                      "Sabar Kantha"="Sabar Kantha ",
                      "Sahebganj"="Sahibganj",
                      "Sant Ravidas Nagar Bhdohi"="Sant Ravidas Nagar Bh",
                      "Sant Ravidas Nagar"="Sant Ravidas Nagar Bh",
                      "SAS Nagar"="SSANagar",
                      "Senapati"="Senapati",
                      "Shravasti"="Shrawasti",
                      "Sibsagar"="Sivasagar",
                      "Siddharth Nagar"="Siddharthnagar",
                      "Simdega"="Sindega",
                      "SINDEGA"="Sindega",
                      "Sivaganga"="Sivagangai",
                      "Sonapur"="Subarnapur",
                      "South 24-Parganas"="South 24 Parganas",
                      "South Garo Hill"="South Garo Hills",
                      "South Garo Hills "="South Garo Hills",
                      "South Twenty Four Parg"="South 24 Parganas",
                      "Tarn Taran"="Tarn Tarn",
                      "Thanjavur"="Thanjavur",
                      "Thiruvallur"="Tiruvallur",
                      "Thiruvarur"="Tiruvarur",
                      "Thoothukkudi"="Thoothukudi",
                      "Tuensang"="Tuensang",
                      "Uttar Kannada"="Uttara Kannada",
                      "Virudhnagar"="Virudhunagar",
                      "Visakhapatnam"="Visakhatnam",
                      "West Garo Hill"="West Garo Hills",
                      "West Khasi Hill"="West Khasi Hills",
                      "Cooch Behar"="Koch Bihar",
                      "Janjgir-Champa" = "Janjgir",
                      "Janjgir-Champa" = "Janjgir",
                      "Baramulla" = "Baramula",
                      "Leh(Ladakh)" = "Leh (Ladakh)",
                      "Punch" = "Poonch")


# create variable for state abbrev
df$state_abbr <- recode(df$State, "Andman nicobar" = "AN",
                          "Andhra Pradesh" = "AP", 
                          "Arunachal Pradesh" = "AR", 
                          "Assam" = "AS",
                          "Bihar" = "BR",
                          "Chattisgarh" = "CG",
                          "Gujarat" = "GJ", 
                          "Haryana" = "HR",
                          "Jharkhand" = "JH",
                          "Karnataka" = "KA",
                          "Kerala" = "KL",
                          "Manipur" = "MN", 
                          "Meghalaya" = "ML",
                          "Mizoram" = "MZ",
                          "Nagaland" = "NL",
                          "Odisha" = "OR",
                          "Pondicherry" = "PY",
                          "Punjab" = "PB", 
                          "Rajasthan" = "RJ",
                          "Sikkim" = "SK",
                          "Tamilnadu" = "TN",
                          "Tripura" = "TR",
                          "Uttarakhand" = "UK",
                          "Dadar nagar haweli" = "DH",
                          "Daman Diu" = "DD")


# Make sure that there are no districts with more than 5 years
# (this would indicate a problem with the renaming)
df %>% count(State, District) %>% summarise(max(n))



# There are 406 districts for which we have 6 years of data and 538 for which we have 5 or 6 years of data
# Save the dataset with all 6 (I will use this for analysis of variance over time)
df <- df %>% group_by(State, District) %>% 
  mutate(n = n()) %>% 
  ungroup() %>% 
  select(State, state_abbr, District, year, std12_letters_and_up, std12_numbers_and_up, 
         std35_std1_and_up, std35_subtraction_and_up, 
         private_6_14, out_of_school_6_14, in_school_3_4, n)

df_all_6 <- df %>% filter(n ==6) %>% select(-n)

df_5_or_6 <- df %>% filter(n >= 5) %>% select(-n)
  
write_csv(df_all_6, "C:/Users/dougj/Documents/Data/Education/ASER District Data/Clean/aser_district_all_6.csv")
write_csv(df_5_or_6, "C:/Users/dougj/Documents/Data/Education/ASER District Data/Clean/aser_district_5_or_6.csv")


