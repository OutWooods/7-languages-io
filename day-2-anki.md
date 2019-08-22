How do you make a loop in io?,loop("this")
How does the while loop work in io?,takes 3 arguements - the condition - the callback - what to do at the end
how does the for loop work in io?,takes 4/5 arguements - the counter - the first value - the last value - optional incremenet (default 1) - and the message with a sender
In Io what is if?,it's just another object
How do you see the operators in IO and their heirarchy?,OperatorTable
What's one of the cool things about IO being just lots of objects?,it means it's easy to interrogate and understand how everything works
In IO how are methods called?,nstead of passing the arguements as values IO passes the message itself and the context. The recievers evaluate the message
How can you pass a random string to call a method in IO?,doMessage
A message has how many parts and what are they in io?,the sender the tarket and the arguements
In java do you pass by value or reference for arguements?,by value
In java how does passing a variable work?,the variable points to an address in memory - you can change what is at that address but you can't reassign the address
What is a reference in java?,the bit that tells the compiler how to get to the referenced object in memory (Heap).
How does a method call work in io?,When you send a message - io takes the message and the context (the sender and target) and puts it on the stack. The reciever than evaluates the message.
how would you build the unless method in io?,unless :method((call sender doMessage(call message argAt(0))) ifFalse( call sender doMessage(call message argAt(1))) ifTrue(call sender doMessage(call message argAt(2))))
How do you see all the methods of all parent objects in io?,ancestors
