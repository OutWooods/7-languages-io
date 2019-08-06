WHat is a DSL?,Domain specific languages
What is OperatorTable addAssignOperator(":", "atPutNumber") doing?,saying that whenever it sees : treat it as atPutNumber so the first arguement should be a string and the second a value

When you send an object a message it will do this
1) COmpute the arguements - these are just messages
2) Get the name, target and sender of the message. 
3) Try and read the slot with the name of the message on the target
4) If the slot exists - return the data or invoke the method inside
5) If the slot doesn't exist - forward the message to the prototype

You can over write the forward method - to create a default method that is used for anything that is not found on the object. 
So 

forward := method(writeln("the method was", call message name, ".")
                  call message arguments foreach(
		     arg,
		     content := self doMessage(arg),

Concurency - IO's main componetns are coroutines, actors and futures. 
The foudation for concurency is the coroutine. A coroutine provides a way to volunarily suspend and resume execution of a process. 
A coroutine is a function with lots of entry and exit points. Yields will suspend the process and switch to another. 
@ returns a future or @@ returns nil and starts the messageon its own thread. 

Java and C use a concurrency philosophy called pre-emptive multitasking. 

Pre-emptive multitasking is when a computer operatin system uses some crieria to decide how long to allocate to one task before giving another task a turn to use the OS. The act of taking control of the OS from one task to another is called preempting. 

pre-emption is the act of temporarily interrupting a task without requiring its cooperation with the intenion of resuming the task. 
A cooperative multitasking system requires programmes or tasks to explicitly programmed to yield when they do not need system resources.

AKa pre-emptive involves the use of an interrupt mechanism . 
Pre-emption means prior seizure of. 

Cooperative multitasking is used with await in languages like Javascript and python.

Pro of coooperative - you have much clearer flows, especially when you have objects that have changable state. 
Con of cooperative - you can have one process dominating not yielding time. Because it needs to be explicitly put in. 
Cooperative is like having a talking or a listening spoon, the person with the spoon gets to talk. They hand the spoon to yield the time.

Actors are universal concurrent primatives that can send messages, proccess messages and create other actors. The messages they recieve are concurrent. Acrots place an incoming message onf a queue and processes the contents of the queue with coroutines.

An actor changes its own states and access others through controlled queues.
Threads can change each others states. Threads fall into the problem of race conditions - when you have multiple threads running. 

In Io sending asynchronous messages to any object makes it an actor. 
Traditionally IO will run syncronously. But all you do to make a method run asynchronously is to add @@. This makes each objetc run its own thread, it'll run nil. 

It returns nil. If its not finished running when the programme is closed. 



A future is a bit like a promise. A future is the result object that is immediately returned from an asynchronous message call. 
The fure will block until the result is avaliable.


--- Getting Eerie to work ----

What is zshrc?
zsh is named after the creators proffessor at princeton
z shell or zsh is a unix shell that can be used for shell scripting. 
Oh my Zsh colects third party plugins and themes for Z shell. 
.zshrc is a file is run whenever you start zsh  - so you can put intializations or paths you want to put in there

When you type a command into the shell, the shell needs to find the programme. If you say where it is, it'll go there. 
If you say ls or cd it needs to look for it. There are to many places it could be. So you need to tell it where to look. 
A list of places to look - or the PATH variable. A list of directories. 

The PATH is an environment variable, environment variables are variables stored for the duration of the terminal session. 
To append to the path all you do is export PATH = $PATH:/new/path  <- each path is separated by a colon. 

The error I had with Eerie is I never setup the path. Or when i did I saved it that time in the terminal but gave it no storage point so that path would be loaded up every time.
