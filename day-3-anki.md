WHat is a DSL?,Domain specific languages
What is OperatorTable addAssignOperator(":", "atPutNumber") doing?,saying that whenever it sees : treat it as atPutNumber so the first arguement should be a string and the second a value
WHat is the forward method in io?,if the slot doesn't exist on the object it looks to its prototype
What is a coroutine?,A funtions for non-pre-emtive multitasking - which allow execution to be stopped and stated (e.g. cooperative tasks).
What are the three main parts for concurrency in io?,coroutines, actors and futures. 
What key word allows a function to give way to other processes in cooperative concurency in io?,yield
What does putting @ before a method in io?,returns a future
WHat does putting @@ before a method in io?,returns nil and starts the message on its own thread
What concurency philosophy do java and C use?,pre-emptive multitasking
What is pre-emptive multitasking?,pre-emption is the act of temporarily interrupting a task without requiring its cooperation with the intenion of resuming the task. 
What is cooperative multi-tasking?,requires programmes or tasks to explicitly programmed to yield when they do not need syste resources
What does pre-emption mean?,prior seizure of
Where is cooperative multitasking used?,with await in JS and python and IOs concurrency
What is a pro of cooperative concurency?,you have much clearer flows, especially when you have objects that have changable state. 
What is a on of cooperative concurrency?,you can have one process dominating not yielding time. Because it needs to be explicitly put in. 
Give an analology for cooperative concurency?,Cooperative is like having a talking or a listening spoon, the person with the spoon gets to talk. They hand the spoon to yield the time.
Give an analology for pre-emptive multitasking?,A teacher directing time to different students getting to talk

Actors are universal concurrent primatives that can send messages, proccess messages and create other actors. The messages they recieve are concurrent. Acrots place an incoming message onf a queue and processes the contents of the queue with coroutines.

An actor changes its own states and access others through controlled queues.
Threads can change each others states. Threads fall into the problem of race conditions - when you have multiple threads running. 

In Io sending asynchronous messages to any object makes it an actor. 
Traditionally IO will run syncronously. But all you do to make a method run asynchronously is to add @@. This makes each objetc run its own thread, it'll run nil. 

It returns nil. If its not finished running when the programme is closed. 

A future is a bit like a promise. A future is the result object that is immediately returned from an asynchronous message call. 
The fure will block until the result is avaliable.


What is zsh?,z shell or zsh is a unix shell that can be used for shell scripting. 
what is a .zshrc file?,.zshrc is a file is run whenever you start zsh  - so you can put intializations or paths you want to put in there
Why do you need path variables in shells?,If you say ls or cd it needs to look for it. There are to many places it could be. So you need to tell it where to look - the PATH variable
What is $PATH in shell?,The PATH is an environment variable, environment variables are variables stored for the duration of the terminal session. 
How do you add a new path to the PATH variavle?.To append to the path all you do is export PATH = $PATH:/new/path  <- each path is separated by a colon. 

The error I had with Eerie is I never setup the path. Or when i did I saved it that time in the terminal but gave it no storage point so that path would be loaded up every time.
