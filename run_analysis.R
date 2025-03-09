
#Read in training datasets
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subj_train <- read.table("./train/subject_train.txt")

#Read in features label
features <- read.table("features.txt")

#Read in test datasets
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subj_test <- read.table("./test/subject_test.txt")

#Bind the test datasets
test <- cbind(y_test, subj_test, X_test)

#Bind the training datsets
training <- cbind(y_train, subj_train, X_train)

######
##Q1##
######

#Bind training and test datasets together
df <- rbind(training, test)

#Select the second column as names for the variables
name <- features %>% select(V2)

#Generate names for the activity and subject columns
A <- data.frame(V2 = c("activity", "subj"))

#Bind the features names to A and transpose
name2 <- rbind(A, name)
name3 <- t(name2)

#Rename the columns in the dataframe using name3
colnames(df) <- name3


######
##Q2##
######

#Select the activity, subject as well as only those columns containing the mean or std
df2 <- df %>% select(activity, subj, contains("mean()") | contains("std()"))

######
##Q3##
######

#Use descriptive names to rename the activity values
df3 <- df2 %>% mutate(activity=recode(activity, "1" = "walking", "2" = "walkingUpstairs", "3" = "walkingDownstairs",
                              "4" = "sitting", "5" = "standing", "6" = "laying", .default=NA_character_))

######
##Q4##
######
#Tidy up the the variable names by removing - and () and make them more descriptive 

names(df3) <- sub("\\()","",names(df3),)
names(df3) <- gsub("\\-","",names(df3),)
names(df3) <- gsub("Acc","Acclerometer",names(df3),)
names(df3) <- gsub("Mag","Magnitude",names(df3),)
names(df3) <- gsub("Gyro","Gyroscopee",names(df3),)
names(df3) <- gsub("^t","time",names(df3),)
names(df3) <- gsub("^f","frequency",names(df3),)

######
##Q5##
######

#generate a tidy data frame with the average of each variable for each activity and each subject.
df4 <- df3 %>% 
        group_by(activity, subj) %>%
        summarise(across(everything(), mean))

write.table(df4, file="run_analysis.txt", row.name=FALSE)


