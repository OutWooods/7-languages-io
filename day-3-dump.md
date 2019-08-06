WHat is a DSL?,Domain specific languages
What is OperatorTable addAssignOperator(":", "atPutNumber") doing?,saying that whenever it sees : treat it as atPutNumber so the first arguement should be a string and the second a value

When you send an object a message it will do this
1) COmpute the arguements - these are just messages
2) Get the name, target and sender of the message. 
3) Try and read the slot with the name of the message on the target
4) If the slot exists - return the data or invoke the method inside
5) If the slot doesn't exist - forward the message to the prototype


