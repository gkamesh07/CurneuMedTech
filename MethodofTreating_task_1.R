#Date : 9/01/2020
#Time : 9:30 AM
################### User's Method Of Treating a Patients #####################


#Fetching dataset 
user1 <- read.csv("E:/STUDY/INTERN-6TH SEM/CURNEU/1/User1data.csv")
user2 <- read.csv("E:/STUDY/INTERN-6TH SEM/CURNEU/1/User2data.csv")
user3 <- read.csv("E:/STUDY/INTERN-6TH SEM/CURNEU/1/User3data.csv")
user4 <- read.csv("E:/STUDY/INTERN-6TH SEM/CURNEU/1/User4data.csv")
user5 <- read.csv("E:/STUDY/INTERN-6TH SEM/CURNEU/1/User5data.csv")

#Data frame conversion
dataframe1 <- data.frame(user1)
dataframe2 <- data.frame(user2)
dataframe3 <- data.frame(user3)
dataframe4 <- data.frame(user4)
dataframe5 <- data.frame(user5)

#String conversion
tmp1 <- sapply(dataframe1, as.character)
tmp2 <- sapply(dataframe2, as.character)
tmp3 <- sapply(dataframe3, as.character)
tmp4 <- sapply(dataframe4, as.character)
tmp5 <- sapply(dataframe5, as.character)

###############################  Splitting chinese characters from Column Recommended & Selected #######################

########## user1 Data ###################

for( i in 1:(length(user1$Recommended))){
  col=5
  s <- unlist(strsplit(tmp1[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp1[[i,col]] <- substr(s,1,nchar(s)-1)
  col = col+1
  s <- unlist(strsplit(tmp1[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp1[[i,col]] <- s
}

########## user2 Data ###################

for( i in 1:(length(user1$Recommended))){
  col=5
  s <- unlist(strsplit(tmp2[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp2[[i,col]] <- s
  col = col+1
  s <- unlist(strsplit(tmp2[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp2[[i,col]] <- s
}

########## user3 Data ###################

for( i in 1:(length(user1$Recommended))){
  col=5
  s <- unlist(strsplit(tmp3[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp3[[i,col]] <- s
  col = col+1
  s <- unlist(strsplit(tmp3[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp3[[i,col]] <- s
}

########## user4 Data ###################

for( i in 1:(length(user1$Recommended))){
  col=5
  s <- unlist(strsplit(tmp4[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp4[[i,col]] <- s
  col = col+1
  s <- unlist(strsplit(tmp4[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp4[[i,col]] <- s
}

########## user5 Data ###################

for( i in 1:(length(user1$Recommended))){
  col=5
  s <- unlist(strsplit(tmp5[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp5[[i,col]] <- s
  col = col+1
  s <- unlist(strsplit(tmp5[[i,col]], "(?<=[a-z(])(?=[A-Z]{1})", perl = TRUE))[2]
  tmp5[[i,col]] <- s
}

#############  Processed files - data frame to csv conversion ###############
write.csv(tmp1,'E:/STUDY/INTERN-6TH SEM/CURNEU/1/tmp1.csv')
write.csv(tmp2,'E:/STUDY/INTERN-6TH SEM/CURNEU/1/tmp2.csv')
write.csv(tmp3,'E:/STUDY/INTERN-6TH SEM/CURNEU/1/tmp3.csv')
write.csv(tmp4,'E:/STUDY/INTERN-6TH SEM/CURNEU/1/tmp4.csv')
write.csv(tmp5,'E:/STUDY/INTERN-6TH SEM/CURNEU/1/tmp5.csv')
