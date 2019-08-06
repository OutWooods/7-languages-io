// 1. The Fibionacci sequence

//Recursive (non-recursive is in the euler file).

fib := method(value, a, b,
  if(value < 1, return a, fib(value -1 , a + b, a))
)

test := fib(10, 1, 0)
test println // should be 89


// 2. How would you change / (divide) to return 0 if the denominator is 0?

// Set the / method on numbers

Number / := method(value, if(value == 0, return 0, return 1))


// 3. Write a method to add up al the numbers in a two dimensional array

List twoDSum :=  self flatten sum

// 4. Add a slot called MyAverage to a list that computes the average of all the numbers in a list. Whappens if there are no numbers? Raise an exception if any item is not

// 5. Write a prototype for a 2 day list, the dim(x,y) method should alocate y lists which are x long. And set (x, y, value) should set a value. get(x, y) should return the value


a) Need to make a 2DList prototype
b) call the dm method creates a list with y and x
c) slots tell you x and y values
d) 

// 6. Write a transport method so that new_matrix


// . Write the matrix to a file and read a matrix from a file

- launchFile will be useful


// 7. Write a programme that gives you ten tries ot guess a random number from 1-100
