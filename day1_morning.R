# alt + shift +k to keyboard shortcuts

data.frame()


sessionInfo()
#alt + dash _  is <- 

#concatenate
x <- c(4,3,67,87)
lenght(x)
typeof(x)

#double stands for real number in computr language....
y <- c(4L, 9L) #the L is to make it strictly integer
typeof(y)
typeof(c("james", "john"))

#type coercion, R tries to figure out what is the type of variable

typeof(c(4.5, 3L))
typeof(c("john", 5))

a <- c("5", "3")
as.double(a)
x <- c(4,3,1,4)
y <- c(4,5,6)
z <- c(x,y)
z

list(x,y)


numbers<- c(3,4,5,6,7)
names<-c("Carmen", "Joana", "matt")
mylist <- list("Numbers"=numbers, "Names"=names)
mylist
str(mylist)


mylist$Names
mylist[["Names"]]

mylist["Names"]

mylist[[2]] # this is a character vector

mylist[2] # this is a list

length(letters)
letters[5:25]
letters[length(letters)] # = letters[26]
letters[(length(letters)-2):(length(letters))] # = letters[24:26]

letters[seq(26, 2, -2)]


