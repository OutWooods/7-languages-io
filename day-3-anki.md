WHat is a DSL?,Domain specific languages
What is OperatorTable addAssignOperator(":" "atPutNumber") doing?,saying that whenever it sees : treat it as atPutNumber so the first arguement should be a string and the second a value
WHat is the forward method in io?,if the slot doesn't exist on the object it looks to its prototype
What is a coroutine?,A funtions for non-pre-emtive multitasking - which allow execution to be stopped and stated (e.g. cooperative tasks).
What are the three main parts for concurrency in io?,coroutines actors and futures. 
What key word allows a function to give way to other processes in cooperative concurency in io?,yield
What does putting @ before a method in io?,returns a future
WHat does putting @@ before a method in io?,returns nil and starts the message on its own thread
What concurency philosophy do java and C use?,pre-emptive multitasking
What is pre-emptive multitasking?,pre-emption is the act of temporarily interrupting a task without requiring its cooperation with the intenion of resuming the task. 
What is cooperative multi-tasking?,requires programmes or tasks to explicitly programmed to yield when they do not need syste resources
What does pre-emption mean?,prior seizure of
Where is cooperative multitasking used?,with await in JS and python and IOs concurrency
What is a pro of cooperative concurency?,you have much clearer flows especially when you have objects that have changable state. 
What is a on of cooperative concurrency?,you can have one process dominating not yielding time. Because it needs to be explicitly put in. 
Give an analology for cooperative concurency?,Cooperative is like having a talking or a listening spoon the person with the spoon gets to talk. They hand the spoon to yield the time.
Give an analology for pre-emptive multitasking?,A teacher directing time to different students getting to talk
What are actors in io?,universal concurrent primitives that can send messages - process messages and create other actors. They recieve concurrent messages - place it in a queue and processes the contents with other coroutines.
WHat's useful about actors in concurrency?,An actor has control over its own state - whilst in threads they can change other states and fall into the trap of race conditions. There's a clear control flow
How do you make an actor in io?,just send an asynchronous message to any object and it is
WHat is a future in io?,A future is a bit like a promise. A future is the result object that is immediately returned from an asynchronous message call. 
What is zsh?,z shell or zsh is a unix shell that can be used for shell scripting. 
what is a .zshrc file?,.zshrc is a file is run whenever you start zsh  - so you can put intializations or paths you want to put in there
Why do you need path variables in shells?,If you say ls or cd it needs to look for it. There are to many places it could be. So you need to tell it where to look - the PATH variable
What is $PATH in shell?,The PATH is an environment variable environment variables are variables stored for the duration of the terminal session. 
How do you add a new path to the PATH variavle?.To append to the path all you do is export PATH = $PATH:/new/path  <- each path is separated by a colon. 
