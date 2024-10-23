### pstat10 midterm 1 practice
# updating 2024-10-23 on jupyterhub (test.lsit)

#array and apply play
aaa <- c(2,3,4,6) # create vector
bbb <- c(5,6,10,12,45) # create vector
new.array <- array(c(aaa,bbb),dim = c(3,3,2))
print(new.array)



# sum the rows
result <- apply(new.array, 1, sum) # sum the rows in new.array
print(result)
# sum the columns
result <- apply(new.array, 2, sum)
print(result)
# sum each of the cells
result <- apply(new.array, c(1,2), sum)
print(result)
is.array(result)

### what can I practice now in prep for midterm?

### My "important" review items
# c() - creating vectors - coercion? concatenate? 
# dataFrame[, c("d","f")] access methods


#### generating stats
# hist(), stem()
# boxplot(), barplot(), pie()
# plot() - plot (iris[ , 3], iris[ , 4])
# cor() correlation coefficient 
# sd() std dev
# mean(), max(), min(), mfv(), var(), quartile(), IQR(), range() 
# unique(), sum() 

### creating vectors 
# rep()
# seq() 
# : - example: series <- 1:10 

### libraries and files
# write.csv(), read.csv()
# data()
# rm() remove dataset


### checking types
# is.data.frame()
# is.list()
# is.vector()
# is.matrix() 

### data frames
# rbind()


### data, working with data
# ls(), dim()
# apply(), lapply() list, sapply() vector
# fivenum() - summary function

### factors 
# factor(), levels(), nlevels(), table(), ordered() 
# sub(), gsub(), Mode(), mode() 
