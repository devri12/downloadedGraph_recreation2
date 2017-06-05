library(ggplot2)
library(readr)
library(dplyr)
library(shiny)
library(tidyr)
library(lubridate)
library(magrittr)

w1_precip_chem <- read_csv("D:/Duke/Work(Environ)/Data/w1_precip_chem.txt")
w1_stream_chem <- read_csv("D:/Duke/Work(Environ)/Data/w1_stream_chem.txt")
w2_precip_chem <- read_csv("D:/Duke/Work(Environ)/Data/w2_precip_chem.txt")
w2_stream_chem <- read_csv("D:/Duke/Work(Environ)/Data/w2_stream_chem.txt")
w3_precip_chem <- read_csv("D:/Duke/Work(Environ)/Data/w3_precip_chem.txt")
w3_stream_chem <- read_csv("D:/Duke/Work(Environ)/Data/w3_stream_chem.txt")
w4_precip_chem <- read_csv("D:/Duke/Work(Environ)/Data/w4_precip_chem.txt")
w4_stream_chem <- read_csv("D:/Duke/Work(Environ)/Data/w4_stream_chem.txt")
w5_precip_chem <- read_csv("D:/Duke/Work(Environ)/Data/w5_precip_chem.txt")
w5_stream_chem <- read_csv("D:/Duke/Work(Environ)/Data/w5_stream_chem.txt")
w6_precip_chem <- read_csv("D:/Duke/Work(Environ)/Data/w6_precip_chem.txt")
w6_stream_chem <- read_csv("D:/Duke/Work(Environ)/Data/w6_stream_chem.txt")
load("D:/Duke/Work(Environ)/Data/public_data.Rdata")

#start by renaming columns to correlate to precip or stream
##OPTIMIZE INTO A LOOP OR FUNCTION
#w1
w1_stream_chem <- plyr::rename(w1_stream_chem, c("Ca" = "Ca.flow",
                                                 "Mg" = "Mg.flow",
                                                 "K" = "K.flow",
                                                 "Na" = "Na.flow",
                                                 "Al" = "Al.flow",
                                                 "NH4" = "NH4.flow",
                                                 "pH" = "pH.flow",
                                                 "SO4" = "SO4.flow",
                                                 "NO3" = "NO3.flow",
                                                 "Cl" = "Cl.flow",
                                                 "PO4" = "PO4.flow",
                                                 "SiO2" = "SiO2.flow"))
w1_precip_chem <- plyr::rename(w1_precip_chem, c("Ca" = "Ca.precip",
                                                 "Mg" = "Mg.precip",
                                                 "K" = "K.precip",
                                                 "Na" = "Na.precip",
                                                 "Al" = "Al.precip",
                                                 "NH4" = "NH4.precip",
                                                 "pH" = "pH.precip",
                                                 "SO4" = "SO4.precip",
                                                 "NO3" = "NO3.precip",
                                                 "Cl" = "Cl.precip",
                                                 "PO4" = "PO4.precip",
                                                 "SiO2" = "SiO2.precip"))
#w2
w2_stream_chem <- plyr::rename(w2_stream_chem, c("Ca" = "Ca.flow",
                                                 "Mg" = "Mg.flow",
                                                 "K" = "K.flow",
                                                 "Na" = "Na.flow",
                                                 "Al" = "Al.flow",
                                                 "NH4" = "NH4.flow",
                                                 "pH" = "pH.flow",
                                                 "SO4" = "SO4.flow",
                                                 "NO3" = "NO3.flow",
                                                 "Cl" = "Cl.flow",
                                                 "PO4" = "PO4.flow",
                                                 "SiO2" = "SiO2.flow"))
w2_precip_chem <- plyr::rename(w2_precip_chem, c("Ca" = "Ca.precip",
                                                 "Mg" = "Mg.precip",
                                                 "K" = "K.precip",
                                                 "Na" = "Na.precip",
                                                 "Al" = "Al.precip",
                                                 "NH4" = "NH4.precip",
                                                 "pH" = "pH.precip",
                                                 "SO4" = "SO4.precip",
                                                 "NO3" = "NO3.precip",
                                                 "Cl" = "Cl.precip",
                                                 "PO4" = "PO4.precip",
                                                 "SiO2" = "SiO2.precip"))
#w3
w3_stream_chem <- plyr::rename(w3_stream_chem, c("Ca" = "Ca.flow",
                                                 "Mg" = "Mg.flow",
                                                 "K" = "K.flow",
                                                 "Na" = "Na.flow",
                                                 "Al" = "Al.flow",
                                                 "NH4" = "NH4.flow",
                                                 "pH" = "pH.flow",
                                                 "SO4" = "SO4.flow",
                                                 "NO3" = "NO3.flow",
                                                 "Cl" = "Cl.flow",
                                                 "PO4" = "PO4.flow",
                                                 "SiO2" = "SiO2.flow"))
w3_precip_chem <- plyr::rename(w3_precip_chem, c("Ca" = "Ca.precip",
                                                 "Mg" = "Mg.precip",
                                                 "K" = "K.precip",
                                                 "Na" = "Na.precip",
                                                 "Al" = "Al.precip",
                                                 "NH4" = "NH4.precip",
                                                 "pH" = "pH.precip",
                                                 "SO4" = "SO4.precip",
                                                 "NO3" = "NO3.precip",
                                                 "Cl" = "Cl.precip",
                                                 "PO4" = "PO4.precip",
                                                 "SiO2" = "SiO2.precip"))
#w4
w4_stream_chem <- plyr::rename(w4_stream_chem, c("Ca" = "Ca.flow",
                                                 "Mg" = "Mg.flow",
                                                 "K" = "K.flow",
                                                 "Na" = "Na.flow",
                                                 "Al" = "Al.flow",
                                                 "NH4" = "NH4.flow",
                                                 "pH" = "pH.flow",
                                                 "SO4" = "SO4.flow",
                                                 "NO3" = "NO3.flow",
                                                 "Cl" = "Cl.flow",
                                                 "PO4" = "PO4.flow",
                                                 "SiO2" = "SiO2.flow"))
w4_precip_chem <- plyr::rename(w4_precip_chem, c("Ca" = "Ca.precip",
                                                 "Mg" = "Mg.precip",
                                                 "K" = "K.precip",
                                                 "Na" = "Na.precip",
                                                 "Al" = "Al.precip",
                                                 "NH4" = "NH4.precip",
                                                 "pH" = "pH.precip",
                                                 "SO4" = "SO4.precip",
                                                 "NO3" = "NO3.precip",
                                                 "Cl" = "Cl.precip",
                                                 "PO4" = "PO4.precip",
                                                 "SiO2" = "SiO2.precip"))
#w5
w5_stream_chem <- plyr::rename(w5_stream_chem, c("Ca" = "Ca.flow",
                                                 "Mg" = "Mg.flow",
                                                 "K" = "K.flow",
                                                 "Na" = "Na.flow",
                                                 "Al" = "Al.flow",
                                                 "NH4" = "NH4.flow",
                                                 "pH" = "pH.flow",
                                                 "SO4" = "SO4.flow",
                                                 "NO3" = "NO3.flow",
                                                 "Cl" = "Cl.flow",
                                                 "PO4" = "PO4.flow",
                                                 "SiO2" = "SiO2.flow"))
w5_precip_chem <- plyr::rename(w5_precip_chem, c("Ca" = "Ca.precip",
                                                 "Mg" = "Mg.precip",
                                                 "K" = "K.precip",
                                                 "Na" = "Na.precip",
                                                 "Al" = "Al.precip",
                                                 "NH4" = "NH4.precip",
                                                 "pH" = "pH.precip",
                                                 "SO4" = "SO4.precip",
                                                 "NO3" = "NO3.precip",
                                                 "Cl" = "Cl.precip",
                                                 "PO4" = "PO4.precip",
                                                 "SiO2" = "SiO2.precip"))
#w6
w6_stream_chem <- plyr::rename(w6_stream_chem, c("Ca" = "Ca.flow",
                                           "Mg" = "Mg.flow",
                                           "K" = "K.flow",
                                           "Na" = "Na.flow",
                                           "Al" = "Al.flow",
                                           "NH4" = "NH4.flow",
                                           "pH" = "pH.flow",
                                           "SO4" = "SO4.flow",
                                           "NO3" = "NO3.flow",
                                           "Cl" = "Cl.flow",
                                           "PO4" = "PO4.flow",
                                           "SiO2" = "SiO2.flow"))
w6_precip_chem <- plyr::rename(w6_precip_chem, c("Ca" = "Ca.precip",
                                                 "Mg" = "Mg.precip",
                                                 "K" = "K.precip",
                                                 "Na" = "Na.precip",
                                                 "Al" = "Al.precip",
                                                 "NH4" = "NH4.precip",
                                                 "pH" = "pH.precip",
                                                 "SO4" = "SO4.precip",
                                                 "NO3" = "NO3.precip",
                                                 "Cl" = "Cl.precip",
                                                 "PO4" = "PO4.precip",
                                                 "SiO2" = "SiO2.precip"))

#combine watersheds stream and precip data
w1_chem <- merge(w1_stream_chem, w1_precip_chem, by = c("ws", "year", "mo")) %>%
  as.data.frame()
w2_chem <- merge(w2_stream_chem, w2_precip_chem, by = c("ws", "year", "mo")) %>%
  as.data.frame()
w3_chem <- merge(w3_stream_chem, w3_precip_chem, by = c("ws", "year", "mo"))
w4_chem <- merge(w4_stream_chem, w4_precip_chem, by = c("ws", "year", "mo"))
w5_chem <- merge(w5_stream_chem, w5_precip_chem, by = c("ws", "year", "mo"))
w6_chem <- merge(w6_stream_chem, w6_precip_chem, by = c("ws", "year", "mo"))

#create data frames for each yearly variable in each watershed to use in checkboxes
#ws1
#change data to yearly
w1_chem <- unite(w1_chem, date, year:mo, sep = "/")
w1_chem$date <- as.character(w1_chem$date)
w1_chem['date'] <- apply(w1_chem[, 'date', drop=F], 2, function(x){paste0(x, "/01")})
#water year adjustment
w1_chem$date <- as.Date(w1_chem$date) %m-% months(5)
#split and sum by year
as.character(w1_chem$date)
w1_chem <- separate(w1_chem, col = date, into = c("year", "month", "day"), sep = "-")

##Make sulfate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert sulfate to mueq/L
w1_chem$SO4.precip <- (w1_chem$SO4.precip) #fix calculations...
#aggregate SO4.precip to get /yr
SO4.precipyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), SO4.precip) %>%
  as.data.frame
#aggregate SO4.flow to get /yr
SO4.flowyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), SO4.flow) %>%
  as.data.frame
#combine sulfate flow and precip year
SO4data.1 <- merge(SO4.precipyear.1, SO4.flowyear.1, by = "year")

##Make nitrate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert nitrate to mueq/L
w1_chem$NO3.precip <- (w1_chem$NO3.precip) #fix calculations...
#aggregate precip NO3 to get /yr
NO3.precipyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), NO3.precip) %>%
  as.data.frame
#aggregate flow NO3 to get /yr
NO3.flowyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), NO3.flow) %>%
  as.data.frame
#combine flow and precip year
NO3data.1 <- merge(NO3.precipyear.1, NO3.flowyear.1, by = "year")

##Make calcium portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert calcium to mueq/L
w1_chem$Ca.precip <- (w1_chem$Ca.precip) #fix calculations...
#aggregate precip Ca to get /yr
Ca.precipyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), Ca.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
Ca.flowyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), Ca.flow) %>%
  as.data.frame
#combine flow and precip year
Cadata.1 <- merge(Ca.precipyear.1, Ca.flowyear.1, by = "year")

##Make pH portion of graph (preceip and flow - pH vs Watey Year)
######################WEIGHTED TOTAL
###Fix pH yearly values... pH of 50 is not a thing!

#aggregate precip pH to get /yr
pH.precipyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), pH.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
pH.flowyear.1 <- group_by(w1_chem, year) %>%
  summarise_each(funs(sum), pH.flow) %>%
  as.data.frame
#combine pH flowyear and precipyear
pHdata.1 <- merge(pH.precipyear.1, pH.flowyear.1, by = "year")


#ws2
#change data to yearly
w2_chem <- unite(w2_chem, date, year:mo, sep = "/")
w2_chem$date <- as.character(w2_chem$date)
w2_chem['date'] <- apply(w2_chem[, 'date', drop=F], 2, function(x){paste0(x, "/01")})
#water year adjustment
w2_chem$date <- as.Date(w2_chem$date) %m-% months(5)
#split and sum by year
as.character(w2_chem$date)
w2_chem <- separate(w2_chem, col = date, into = c("year", "month", "day"), sep = "-")

##Make sulfate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert sulfate to mueq/L
w2_chem$SO4.precip <- (w2_chem$SO4.precip) #fix calculations...
#aggregate SO4.precip to get /yr
SO4.precipyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), SO4.precip) %>%
  as.data.frame
#aggregate SO4.flow to get /yr
SO4.flowyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), SO4.flow) %>%
  as.data.frame
#combine sulfate flow and precip year
SO4data.2 <- merge(SO4.precipyear.2, SO4.flowyear.2, by = "year")

##Make nitrate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert nitrate to mueq/L
w2_chem$NO3.precip <- (w2_chem$NO3.precip) #fix calculations...
#aggregate precip NO3 to get /yr
NO3.precipyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), NO3.precip) %>%
  as.data.frame
#aggregate flow NO3 to get /yr
NO3.flowyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), NO3.flow) %>%
  as.data.frame
#combine flow and precip year
NO3data.2 <- merge(NO3.precipyear.2, NO3.flowyear.2, by = "year")

##Make calcium portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert calcium to mueq/L
w2_chem$Ca.precip <- (w2_chem$Ca.precip) #fix calculations...
#aggregate precip Ca to get /yr
Ca.precipyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), Ca.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
Ca.flowyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), Ca.flow) %>%
  as.data.frame
#combine flow and precip year
Cadata.2 <- merge(Ca.precipyear.2, Ca.flowyear.2, by = "year")

##Make pH portion of graph (preceip and flow - pH vs Watey Year)
######################WEIGHTED TOTAL
###Fix pH yearly values... pH of 50 is not a thing!

#aggregate precip pH to get /yr
pH.precipyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), pH.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
pH.flowyear.2 <- group_by(w2_chem, year) %>%
  summarise_each(funs(sum), pH.flow) %>%
  as.data.frame
#combine pH flowyear and precipyear
pHdata.2 <- merge(pH.precipyear.2, pH.flowyear.2, by = "year")


#ws3
#change data to yearly
w3_chem <- unite(w3_chem, date, year:mo, sep = "/")
w3_chem$date <- as.character(w3_chem$date)
w3_chem['date'] <- apply(w3_chem[, 'date', drop=F], 2, function(x){paste0(x, "/01")})
#water year adjustment
w3_chem$date <- as.Date(w3_chem$date) %m-% months(5)
#split and sum by year
as.character(w3_chem$date)
w3_chem <- separate(w3_chem, col = date, into = c("year", "month", "day"), sep = "-")

##Make sulfate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert sulfate to mueq/L
w3_chem$SO4.precip <- (w3_chem$SO4.precip) #fix calculations...
#aggregate SO4.precip to get /yr
SO4.precipyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), SO4.precip) %>%
  as.data.frame
#aggregate SO4.flow to get /yr
SO4.flowyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), SO4.flow) %>%
  as.data.frame
#combine sulfate flow and precip year
SO4data.3 <- merge(SO4.precipyear.3, SO4.flowyear.3, by = "year")

##Make nitrate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert nitrate to mueq/L
w3_chem$NO3.precip <- (w3_chem$NO3.precip) #fix calculations...
#aggregate precip NO3 to get /yr
NO3.precipyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), NO3.precip) %>%
  as.data.frame
#aggregate flow NO3 to get /yr
NO3.flowyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), NO3.flow) %>%
  as.data.frame
#combine flow and precip year
NO3data.3 <- merge(NO3.precipyear.3, NO3.flowyear.3, by = "year")

##Make calcium portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert calcium to mueq/L
w3_chem$Ca.precip <- (w3_chem$Ca.precip) #fix calculations...
#aggregate precip Ca to get /yr
Ca.precipyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), Ca.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
Ca.flowyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), Ca.flow) %>%
  as.data.frame
#combine flow and precip year
Cadata.3 <- merge(Ca.precipyear.3, Ca.flowyear.3, by = "year")

##Make pH portion of graph (preceip and flow - pH vs Watey Year)
######################WEIGHTED TOTAL
###Fix pH yearly values... pH of 50 is not a thing!

#aggregate precip pH to get /yr
pH.precipyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), pH.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
pH.flowyear.3 <- group_by(w3_chem, year) %>%
  summarise_each(funs(sum), pH.flow) %>%
  as.data.frame
#combine pH flowyear and precipyear
pHdata.3 <- merge(pH.precipyear.3, pH.flowyear.3, by = "year")


#ws4
#change data to yearly
w4_chem <- unite(w4_chem, date, year:mo, sep = "/")
w4_chem$date <- as.character(w4_chem$date)
w4_chem['date'] <- apply(w4_chem[, 'date', drop=F], 2, function(x){paste0(x, "/01")})
#water year adjustment
w4_chem$date <- as.Date(w4_chem$date) %m-% months(5)
#split and sum by year
as.character(w4_chem$date)
w4_chem <- separate(w4_chem, col = date, into = c("year", "month", "day"), sep = "-")

##Make sulfate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert sulfate to mueq/L
w4_chem$SO4.precip <- (w4_chem$SO4.precip) #fix calculations...
#aggregate SO4.precip to get /yr
SO4.precipyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), SO4.precip) %>%
  as.data.frame
#aggregate SO4.flow to get /yr
SO4.flowyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), SO4.flow) %>%
  as.data.frame
#combine sulfate flow and precip year
SO4data.4 <- merge(SO4.precipyear.4, SO4.flowyear.4, by = "year")

##Make nitrate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert nitrate to mueq/L
w4_chem$NO3.precip <- (w4_chem$NO3.precip) #fix calculations...
#aggregate precip NO3 to get /yr
NO3.precipyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), NO3.precip) %>%
  as.data.frame
#aggregate flow NO3 to get /yr
NO3.flowyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), NO3.flow) %>%
  as.data.frame
#combine flow and precip year
NO3data.4 <- merge(NO3.precipyear.4, NO3.flowyear.4, by = "year")

##Make calcium portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert calcium to mueq/L
w4_chem$Ca.precip <- (w4_chem$Ca.precip) #fix calculations...
#aggregate precip Ca to get /yr
Ca.precipyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), Ca.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
Ca.flowyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), Ca.flow) %>%
  as.data.frame
#combine flow and precip year
Cadata.4 <- merge(Ca.precipyear.4, Ca.flowyear.4, by = "year")

##Make pH portion of graph (preceip and flow - pH vs Watey Year)
######################WEIGHTED TOTAL
###Fix pH yearly values... pH of 50 is not a thing!

#aggregate precip pH to get /yr
pH.precipyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), pH.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
pH.flowyear.4 <- group_by(w4_chem, year) %>%
  summarise_each(funs(sum), pH.flow) %>%
  as.data.frame
#combine pH flowyear and precipyear
pHdata.4 <- merge(pH.precipyear.4, pH.flowyear.4, by = "year")


#ws5
#change data to yearly
w5_chem <- unite(w5_chem, date, year:mo, sep = "/")
w5_chem$date <- as.character(w5_chem$date)
w5_chem['date'] <- apply(w5_chem[, 'date', drop=F], 2, function(x){paste0(x, "/01")})
#water year adjustment
w5_chem$date <- as.Date(w5_chem$date) %m-% months(5)
#split and sum by year
as.character(w5_chem$date)
w5_chem <- separate(w5_chem, col = date, into = c("year", "month", "day"), sep = "-")

##Make sulfate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert sulfate to mueq/L
w5_chem$SO4.precip <- (w5_chem$SO4.precip) #fix calculations...
#aggregate SO4.precip to get /yr
SO4.precipyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), SO4.precip) %>%
  as.data.frame
#aggregate SO4.flow to get /yr
SO4.flowyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), SO4.flow) %>%
  as.data.frame
#combine sulfate flow and precip year
SO4data.5 <- merge(SO4.precipyear.5, SO4.flowyear.5, by = "year")

##Make nitrate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert nitrate to mueq/L
w5_chem$NO3.precip <- (w5_chem$NO3.precip) #fix calculations...
#aggregate precip NO3 to get /yr
NO3.precipyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), NO3.precip) %>%
  as.data.frame
#aggregate flow NO3 to get /yr
NO3.flowyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), NO3.flow) %>%
  as.data.frame
#combine flow and precip year
NO3data.5 <- merge(NO3.precipyear.5, NO3.flowyear.5, by = "year")

##Make calcium portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert calcium to mueq/L
w5_chem$Ca.precip <- (w5_chem$Ca.precip) #fix calculations...
#aggregate precip Ca to get /yr
Ca.precipyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), Ca.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
Ca.flowyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), Ca.flow) %>%
  as.data.frame
#combine flow and precip year
Cadata.5 <- merge(Ca.precipyear.5, Ca.flowyear.5, by = "year")

##Make pH portion of graph (preceip and flow - pH vs Watey Year)
######################WEIGHTED TOTAL
###Fix pH yearly values... pH of 50 is not a thing!

#aggregate precip pH to get /yr
pH.precipyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), pH.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
pH.flowyear.5 <- group_by(w5_chem, year) %>%
  summarise_each(funs(sum), pH.flow) %>%
  as.data.frame
#combine pH flowyear and precipyear
pHdata.5 <- merge(pH.precipyear.5, pH.flowyear.5, by = "year")


#ws6
#change data to yearly
w6_chem <- unite(w6_chem, date, year:mo, sep = "/")
w6_chem$date <- as.character(w6_chem$date)
w6_chem['date'] <- apply(w6_chem[, 'date', drop=F], 2, function(x){paste0(x, "/01")})
#water year adjustment
w6_chem$date <- as.Date(w6_chem$date) %m-% months(5)
#split and sum by year
as.character(w6_chem$date)
w6_chem <- separate(w6_chem, col = date, into = c("year", "month", "day"), sep = "-")

##Make sulfate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert sulfate to mueq/L
w6_chem$SO4.precip <- (w6_chem$SO4.precip) #fix calculations...
#aggregate SO4.precip to get /yr
SO4.precipyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), SO4.precip) %>%
  as.data.frame
#aggregate SO4.flow to get /yr
SO4.flowyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), SO4.flow) %>%
  as.data.frame
#combine sulfate flow and precip year
SO4data.6 <- merge(SO4.precipyear.6, SO4.flowyear.6, by = "year")

##Make nitrate portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert nitrate to mueq/L
w6_chem$NO3.precip <- (w6_chem$NO3.precip) #fix calculations...
#aggregate precip NO3 to get /yr
NO3.precipyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), NO3.precip) %>%
  as.data.frame
#aggregate flow NO3 to get /yr
NO3.flowyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), NO3.flow) %>%
  as.data.frame
#combine flow and precip year
NO3data.6 <- merge(NO3.precipyear.6, NO3.flowyear.6, by = "year")

##Make calcium portion of graph (preceip and flow - mueq/L vs Water Year)
######################WEIGHTED TOTAL
#convert calcium to mueq/L
w6_chem$Ca.precip <- (w6_chem$Ca.precip) #fix calculations...
#aggregate precip Ca to get /yr
Ca.precipyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), Ca.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
Ca.flowyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), Ca.flow) %>%
  as.data.frame
#combine flow and precip year
Cadata.6 <- merge(Ca.precipyear.6, Ca.flowyear.6, by = "year")

##Make pH portion of graph (preceip and flow - pH vs Watey Year)
######################WEIGHTED TOTAL
###Fix pH yearly values... pH of 50 is not a thing!

#aggregate precip pH to get /yr
pH.precipyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), pH.precip) %>%
  as.data.frame
#aggregate flow Ca to get /yr
pH.flowyear.6 <- group_by(w6_chem, year) %>%
  summarise_each(funs(sum), pH.flow) %>%
  as.data.frame
#combine pH flowyear and precipyear
pHdata.6 <- merge(pH.precipyear.6, pH.flowyear.6, by = "year")



#shiny app
ui <- fluidPage(
  titlePanel(
    (strong("Watershed exploration"))
  ),
  sidebarLayout(
    sidebarPanel(

    ),
    mainPanel(
      tabsetPanel(tabPanel("Sulfur",
                           selectInput("checkSO4", 
                                              label = h4("Choose a watershed"), 
                                              
                                              choices = list("Watershed 1" = SO4data.1,
                                                          "Watershed 2" = SO4data.2,
                                                          "Watershed 3" = SO4data.3,
                                                          "Watershed 4" = SO4data.4,
                                                          "Watershed 5" = SO4data.5,
                                                          "Watershed 6" = SO4data.6)),
                           plotOutput("s")),
                  tabPanel("Nitrate", 
                           checkboxGroupInput("checkNO3", 
                                              label = h4("Choose a watershed"), 
                                              selected = NO3data.1,
                                              choices = list("Watershed 1" = NO3data.1,
                                                             "Watershed 2" = NO3data.2,
                                                             "Watershed 3" = NO3data.3,
                                                             "Watershed 4" = NO3data.4,
                                                             "Watershed 5" = NO3data.5,
                                                             "Watershed 6" = NO3data.6)),
                           plotOutput("n")),
                  tabPanel("Calcium", 
                           checkboxGroupInput("checkCa", 
                                              label = h4("Choose a watershed"), 
                                              selected = Cadata.1,
                                              choices = list("Watershed 1" = Cadata.1,
                                                             "Watershed 2" = Cadata.2,
                                                             "Watershed 3" = Cadata.3,
                                                             "Watershed 4" = Cadata.4,
                                                             "Watershed 5" = Cadata.5,
                                                             "Watershed 6" = Cadata.6)),
                           plotOutput("c")),
                  tabPanel("pH", 
                           checkboxGroupInput("checkpH", 
                                              label = h4("Choose a watershed"), 
                                              selected = pHdata.1,
                                              choices = list("Watershed 1" = pHdata.1,
                                                             "Watershed 2" = pHdata.2,
                                                             "Watershed 3" = pHdata.3,
                                                             "Watershed 4" = pHdata.4,
                                                             "Watershed 5" = pHdata.5,
                                                             "Watershed 6" = pHdata.6)),
                           plotOutput("p"))
      )
    )
  )
)

server <- function(input, output){

  #try using event reactive to update the watershed
#  eventReactive(input$checkSO4, )
  
#plot sulfur data
output$s <- renderPlot({
  ggplot(as.data.frame(get(input$checkSO4)), aes(x = year)) +
    geom_point(aes(y = SO4.precip, col = "Precipitation")) + 
    geom_point(aes(y = SO4.flow, col = "Stream Water"))
})
######CONVERT BACK TO ACTUAL DATES AFTER EVERYTHING

#plot nitrate data
output$n <- renderPlot({
  ggplot(get(input$checkNO3), aes(year)) +
    geom_point(aes(y = NO3.precip, col = "Precipitation")) + 
    geom_point(aes(y = NO3.flow, col = "Stream Water"))
  
})

#plot calcium data
CaDf <- reactive({get(input$checkCa)})

output$c <- renderPlot({
  ggplot(CaDf(), aes(year)) +
    geom_point(aes(y = Ca.precip, col = "Precipitation")) + 
    geom_point(aes(y = Ca.flow, col = "Stream Water"))
  
})

#plot pH data
output$p <- renderPlot({
  ggplot(input$checkpH, aes(year)) +
    geom_point(aes(y = pH.precip, col = "Precipitation")) + 
    geom_point(aes(y = pH.flow, col = "Stream Water"))
  
})

#use gridExtra to combine them

}

shinyApp(ui = ui, server = server)

