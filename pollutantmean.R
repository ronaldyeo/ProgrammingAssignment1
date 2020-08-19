# Create Function
pollutantmean <- function(directory, pollutant, id){

#List all files
csv_list <- list.files(path = paste0("./",directory))

#Create dataframe
df <- data.frame()

#Read required files
for(i in id){
  df <- rbind(df, read.csv(file = paste0("./",directory,"/", csv_list[i]), sep = ","))
  }

#Calculate Mean
mean(df[,pollutant], na.rm = T)
       
}