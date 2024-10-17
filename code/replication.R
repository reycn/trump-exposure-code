# R version: 4.4.1 (2024-06-14)

# 1. Load packages ########################################
if (!is.element('glue', installed.packages()[,1])) {
    install.packages('glue',repos = "http://cran.us.r-project.org")
}
if (!is.element("lfe", installed.packages()[, 1])) {
    install.packages("lfe",repos = "http://cran.us.r-project.org")
}
if (!is.element("dplyr", installed.packages()[, 1])) {
    install.packages("dplyr",repos = "http://cran.us.r-project.org")
}
library(glue)
library(lfe)
library(dplyr)

# 2. Define parameters ####################################
platforms <- c("facebook", "instagram", "twitter", "three") # We have three platforms
dvs <- c("exposure", "engagement") # We have two DVs: (1) media coverage and (2) audience engagement
eq <- as.formula("log1p(y) ~ g*s + g*l + log1p(pres) + log1p(gop)") # Our regression model, log1p for possible zeroes

# 3. For loop, 2x4 = 8 replications ########################
for (dv in dvs){
    for  (platform in platforms) {
        print(glue("============= Replicating: {if_else(dv == 'exposure', 'Media Coverage', 'Audience Engagement')} / {tools::toTitleCase(platform)} ============="))
        # 3.1 Load the data
        path <- glue("../data/{platform}.{dv}.csv") # Path to the data
        df <- read.csv(path) # Load the data

        # 3.2. Replication
        result <- felm(eq, df) %>% summary()
        print(result)
    }
}
