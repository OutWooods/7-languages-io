What is recursion?,When a function calls itself directly or indirectlt. 
Good example is factorials. If the arguement passed in is 1, you return 1. Else you return n*fact(n -1);

So you can imagine, the numbers go down and down until the chain is broken. return 1. Then you bubble up. return 2 * 1, return 3 * 2. Return 4 * 3. 

T`he trick with recursion is to represent a problem as one or more smaller problems. And find a base condition to stop it. 

Direct recursion is when a function calls itself directly. But indirect is when a function calls itself indirectly. 


Tailed vs non-tailed recusion
A tail recursion is when the recursive call is the last thing executed by the function. (So the base conditions are checked first).

Tail recursive functions are considered better than non.

Why - on-tail recursion means you're waiting on all the later recursions to be evaluated. Whist tailed means you are only running on cursion of the functin at a time. 

non-tail - you perform the recursive calls first then you take the retur value of the recursive call and calculate the result. 

tail - you perform your calculators first then you execute the cursive call passine the results of your current step into the next steps. the calculation is done before the recursive call. The function doesn't do anything else after recursing. 
It means you can pass the result through instead of waiting for it.Otherwise, you need to keep all the necessary variale values to come back to later. this can really slow stuff down. 


WHat is a stack frame?


Good way to design recursive code
1) Build or pseudocode as non-recursive
2) Identify what conditions for your arguements are
3) See which ones are base cases 
4) Slowly build it out. 
5) See if you can make it tailed rather than non-tailed. 
