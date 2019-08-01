What is recursion?,When a function calls itself directly or indirectlt. 
Give an example of recursion with factorials?,If the arguement passed in is 1, you return 1. Else you return n*fact(n -1);
What is tailed recursions?,
What stops a recursive cycle?,base conditions - where no recursive function is called
What is direct recursion?,when a function calls itself directly.
What is indirect recursion?,indirect is when a function calls itself indirectly. 
What is non-tailed recusions?,recursion means you're waiting on all the later recursions to be evaluated (or some others). The last thing the function does is not just call another recursive function.
What is tailed recursion - short?,A tail recursion is when the recursive call is the last thing executed by the function. 
What is tailed recursion - long?,You do all your calculations etc before calling the recursive function. You pass all you need into the function and you don't have to wait on the result in that function.
Why are tailed recursive functions considered better?,Because it takes up less memory. Otherwise all the previous functions values need to be stored to be reused when the values bubbles back up.
Guide to making a recursive function(5)?,build or pseudocode as non-recursive - identify what conditions and arguements you have - see which ones are base cases - slowly build it out - see if you can make it tailed rather than non
