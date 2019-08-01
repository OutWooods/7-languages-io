// List the sum of the natural numbers that are multiples of 3 or 5 below 1000



// anything divisible by 3, or 5

a := 0
b := 1 

while (a < 1000, if(a % 3 == 0 or a % 5 == 0, b = b + a
	a = a + 1, a = a + 1))

b println


// All the even fibionacci numbers

a := 1
c := 1
d := 0
b := 0
while(a < 4000000, if(a % 2 == 0, b = b + a 
	d = a clone
	a println
	a = a + c
	c = d,
	d = a
	a = a + c
	c = d ))

b println




