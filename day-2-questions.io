// 1. The Fibionacci sequence

//Recursive (non-recursive is in the euler file).

fib := method(value, a, b,
  if(value < 1, return a, fib(value -1 , a + b, a))
)

test := fib(10, 1, 0)
test println // should be 89


// 
