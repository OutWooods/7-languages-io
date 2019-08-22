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

