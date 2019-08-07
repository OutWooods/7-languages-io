// 6. Write a transpose method so that new_matrix get(y, x) == matrix get(x, y)

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
