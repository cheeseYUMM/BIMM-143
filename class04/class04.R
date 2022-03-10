# 2. Simple Calculations
5+3
5-3
5*3
5/3


# 3. objectName <- value
x <- 3*4
x

this_is_a_really_long_name <- 2.5
this_is_a_really_long_name

r_rocks <- 2^3
# rrocks --> object name recognizes _
# R_rocks --> object name differentiates capital letters
r_rocks


# 4. Calling Functions
seq(1, 10)
seq(1, 10, by=2)

# useful functions documentation: example()
example(seq)

date()


# 5. Getting help in R
# log computes logarithms by default natural logarithms
help(log)
?log

# Used when you do not know the name of the function
help.search("cross tabulate")
??"cross tabulate"

example(log)


# 6. Vectors, Vectorization, and Indexing
length(3.1)
length(1:4)

# Vectorization
x <- c(56, 95.3, 0.4)
x

y <- c(3.2, 1.1, 0.2)
y

x+y
x-y

x/y

sqrt(x)
round(sqrt(x))
# round to 1 decimal point
round(sqrt(x), 1)
# round to 3 decimal point
round(sqrt(x), 3)

# Vector Indexing
x <- c(56, 95.3, 0.4)
x[2]
x[1]
x[4]

x[3] <- 0.5
x
