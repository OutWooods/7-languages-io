Loops in io
loop("this" println) <- you have an infint loop

while loop takes 3 arguements the condition, callback and what to do at the end of the loop

for loop takes 4/5 arguements - the counter the fist value the last value an optional incrememt and the message with a sender (it defaults to an increment of 1)

if is implemented purely as a function.

Io has a load of syntactic sugar (aka operators) like other languages.
The OperatorTable is just an object with slots you can add or remove to.

To add an operator you do addOperator("xor", 11) The number is its precedence

Because everything is an object, its easy to start trying to understand how each thing works. Because you can interrogate them all in the same way. how does or work? or, how does a singleton work?

So when you call 4 or 2 what's happening, is the 4 object is having the or message sent to it, with an arguement of 2.
The four object just always returns true when it's send the or message.

Key thing about io is message reflection, you can query any characteristic or any message and act appropriately.

A message has three parts - the sender the target and the arguments.

we can access the sender in a method (you call the keyword sender). You can also see the target (you call the keyword target).
You can see the arguements with the message arguements and message ame will give you the name of the message.

Most languages pass arguments as values on stacks. E.g. Java computes each value of a parameter first the place them on the stack.
Io passes the message itself and the context. Then the recievers evaluate the message.

io's doMessage will execute an arbitrar message.

pass by value vs pass by reference.
When you create variabes, the variable name does not point to the value, itis a pointer - it is the address or location of the variable in memory. In Java you can't change where a pointer points. If dog variable is at point 42 you can change what is in 42 but you cannot change the dog pointer to be something else. So java is pass by value. When you pass an arguement, you don't pass the Object itself but the reference to the object.
The refence, the variable holds the bit that tells the compiler how to get to the referenced object in memory (Heap).


In IO each one is an object in a slot in the great overarching Object.

When you send a message - io takes the message and the context (the sender and target) and puts it on the stack. The reciever than evaluates the message.

In Java it comuters each value of the parameters of a method first and then places those on the stack.


unless :method(
  (call sender doMessage(call message argAt(0)))
  ifFalse( call sender doMessage(call message argAt(1)))
  ifTrue(call sender doMessage(call message argAt(2)))
)

Io lets you also look into how slots are working.
A method called ancestors.

