library(tidyverse)

# Create Function
complete <- function(directory, id){
  
#List all files
csv_list <- list.files(path = paste0("./",directory))
  
#Create dataframe
df <- data.frame(matrix(ncol = 2, nrow = 0))

  
#Read required files
for(i in id){
  temp_df <- read.csv(file = paste0("./",directory,"/", csv_list[i]), sep = ",")
  no.row <- nrow(filter(temp_df, complete.cases(temp_df)))
  df <- rbind(df,data.frame(i, no.row))
  }

colnames(df) <- c("id","nobs")

df
}