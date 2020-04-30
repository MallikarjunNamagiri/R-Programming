# Matrix
# Vector : 1D array of data elements
# Matrix : 2D array of data elememts
# Rows and Columns
# One atomic vector type

# Create a matrix using matrix()
matrix(1:6, nrow = 2)

matrix(1:6, ncol = 2)

matrix(1:6, nrow = 2, byrow = TRUE)

# Creating a matrix: recycling
matrix(1:3, nrow = 2, ncol = 3)

matrix(1:4, nrow = 2, ncol = 3)

#Warning message:
#In matrix(1:4, nrow = 2, ncol = 3) :
#  data length [4] is not a sub-multiple or multiple of the number of columns [3]

#rbind() - Shortcut for Row bind
#cbind() - Shortcut for column bind

cbind(1:3, 1:3)

rbind(1:3, 1:3)

m <- matrix(1:6, byrow = TRUE, nrow = 2)
rbind(m, 7:9)

cbind(m, c(10, 11))

#Naming a matrix
m <- matrix(1:6, byrow = TRUE, nrow = 2)
rownames(m) <- c("row1", "row2")
m

colnames(m) <- c("col1", "col2", "col3")
m

#Method - 2:
m <- matrix(1:6, byrow = TRUE, nrow = 2,
            dimnames = list(c("row1", "row2"),
                            c("col1", "col2", "col3")))
m

# Coercion
num <- matrix(1:8, ncol = 2)
num

char <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
char

cbind(num, char)
