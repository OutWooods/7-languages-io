// 1. The Fibionacci sequence

//Recursive (non-recursive is in the euler file).

fib := method(value, a, b,
  if(value < 1, return a, fib(value -1 , a + b, a))
)

test := fib(10, 1, 0)
test println // should be 89


// 2. How would you change / (divide) to return 0 if the denominator is 0?

// Set the / method on numbers

Number traditionalDivision := Number getSlot("/")

Number / := method(value, if(value == 0, return 0, return self traditionalDivision(value))


// 3. Write a method to add up al the numbers in a two dimensional array

List twoDSum :=  self flatten sum

// 4. Add a slot called MyAverage to a list that computes the average of all the numbers in a list. Whappens if there are no numbers? Raise an exception if any item is not

// There is already an average method in io, but here is the implementation to do it fresh. 

List myAverage := method(
  if(self select(value, value type != "Number") isEmpty,
	  self sum / self size,
          return Exception raise ("There is a non-number!")
    )
)

list("12") myAverage println
list(12) myAverage println


// 6. Write a transpose method so that new_matrix


// . Write the matrix to a file and read a matrix from a file

- launchFile will be useful


// 7. Write a programme that gives you ten tries ot guess a random number from 1-100
