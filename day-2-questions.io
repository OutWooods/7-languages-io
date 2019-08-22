// 1. The Fibionacci sequence recursive

fib := method(value, a, b, if(value < 1, return a, fib(value -1 , a + b, a)))

test := fib(10, 1, 0)
test println // should be 89

// 2. How would you change / (divide) to return 0 if the denominator is 0?

Number traditionalDivision := Number getSlot("/")

Number / := method(divisor, if(divisor == 0, return 0, return self traditionalDivision(divisor))

// 3. Write a method to add up all the numbers in a two dimensional array

List twoDSum :=  self flatten sum

// 4. Add a slot called MyAverage to a list that computes the average of all the numbers in a list. Raise an exception if any item is not. (An exception is already raised for no values whatsoever so I allowed that to stay rather than add a new excepiton.)

// There is already an average method in io, but here is the implementation to do it fresh.

List myAverage := method(
  if(self select(value, value type != "Number") isEmpty or self isEmpty,
	  self sum / self size,
          return Exception raise ("There is a non-number!")
    )
)

list("12") myAverage println
list(12) myAverage println

// 5. Write a prototype for a two dimensional list. dim(x , y) method should allocate a list of y lists that are x elements long. set(x, y value) should set a value and get(X, y) should return that value.

2DMatrix := List clone
2DMatrix dim := method(x, y,
   matrix := self clone
   matrix x := x
   matrix y := y

   y repeat(
     baseList := List clone
     x repeat(baseList append("a"))
     matrix append(baseList)
   )

   matrix
)

2DMatrix set := method(x, y, value,
    self at(y) atPut(x, value)
    self
)

2DMatrix get := method(x,y,
   self at(y) at(x)
)


tester := 2DMatrix dim(3,2)
tester set(1,1,"q")
tester get(1,1) println
tester  println

// 6. Write a transpose method so that new_matrix get(y, x) == matrix get(x, y)


2DMatrix transpose := method(
   yValue := 0
   transposed := 2DMatrix dim(self y, self x)

   self foreach(value,
      xValue := 0

      value foreach(value,
        transposed set(yValue, xValue, value)
	xValue := xValue + 1
      )
      yValue := yValue + 1
   )

  transposed
)

tester := 2DMatrix dim(3,2)
tester set(2,1,"q")
tester get(2,1) println
tester  println
testerTransposed := tester transpose
testerTransposed println


// 7. Write the matrix to a file and read a matrix from a file

- launchFile will be useful


// 8. Write a programme that gives you ten tries ot guess a random number from 1-100


