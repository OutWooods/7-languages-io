Question 
What are coroutines, async sockets and SIMD support.
How does recursiveness ACTUALLY work?

Good slides to help:
http://soft.vub.ac.be/~tvcutsem/talks/presentations/IO-tvcutsem-26-11-04.pdf


what does := mean?,It converts to setSlot 
what does = mean?,It converts to updateSlot
Presumably, when you're making new assigments you're setting slots on the object for the programme so you can acces them. 
What are homoiconic languages?,languages which use code as data
How do homoiconic languoages work?,The programme itself is written as the code itself so you can manipulate it with other code
Give two examples of homoiconic languages?,Io and Lisp
How is a programme represented in a homoiconic language?,the primary representation is in a primitive type of the language itself
Is JS still a prototype language?,yes
What does SMID stand for?,Single instruction - multiple data
What is SMID?,It's a class of parallel computers - computers with multiple processing elements that perform the same operation on multiple data points simultaneously. 
What is data level parallelism?,Doing the same operations on lots of different bits of data but not changing the same data at the same time.
What is SMID often used for?,improving performance of cpu with multimedia use




How do they approach learning languages?
IO - invented in 20002 
It's a prototype language
Lua and JS are also prototype language - every object is a clone of another

In prototypal languages you can make prototype objects - and then make new instances
We don't need classes to make lots of similar objects - objects inherit from objects
An object can act as a prototype for even new objects

Object based often allow alteration of prototypes during run time. Whilst in ruby etc classes cannot be altered at run time. 

The prototype property is Self in javascript or proto in IO. You can make an object ex nihilo (from nothing) or through cloning an existing one. 
In class based languages a new instance is constructed through a classes' constructor function. 

JS is not truely class based the ECMAScript class is syntactic sugar over the prototype based inheritance.

In IO everything is a message and it returns an object. A message that returns a reciever. 
In prototype languages every object is a clone of an existing object rather than a class. 

"Hi ho, IO" print  <- here you are sending the print message to the string. Recievers are on the left, and messages go on the right. 

Object is the root level object, when you make a brand new object you clone off the root. 

Then you ca add properties. to an object
Vehicle description := "something that takes you places"

Objects have slots - essentially a hash. Each slot has a key. 
To add a new slot you have to do :=  to reassign to an existing slot you do =.

To see an objects slots you pass the slotNames message to the object. 
Vehicle slotNames
It also has a type slot which tells you what type it is

By convention in IO - types begin with uppercase letters. When you use this, IO creates a type slot with the name you gave it. Thats the only different with a type. It is just another object - we just have a convention so it has an extra thing. 

If you clone down so you clone a non-type - it works just the same as before. 

Now if you inherit, you can overwrite at a lower level, but if the slow does not exist, it will look to the parent object to see if that has a a slow. 

To clone an object you do ferrari := Vehicle clone

In IO (as with JS) a method is just another type of object. A block object

To make a method you just do method(what you want to happen here)

Since a method is an object, you can just assign it to a slot. 
tree grow := method("getting bigger" println)

IO has super basic suntax. 

If you want to get a specific slot you do class getSlot("name")
proto gets you the proto type of the specific object

There's a master namespace called lobby that contains all the named objects. 

Everything thing is an object
Every interaction with an object is a message
You don't instantiate classes you clone other objects called prototypes
Objects remember their prototypes
Objects have slots
Slots contain objects 
Methods are objects and hence can be stored in slots
A message returns the value in a slot or invokes the method in a slot
If an objecct can't respond to a message, it sends that message to its prototype.


Collections - Io has a few types of these.
List is the prototype for all lists and Map is the prototype for key-value pairs (like ruby hashes). 

List is an array essentially. 
Map is a hash essentially - key value pairs

list has some convient methods for maths
Object supports the list method (the main object that rules the code)

average sum at() index (it's 0 indexed) isEmpty

for Map
you do atPut and give it a key and value

strings are not strings, they are sequences
It has just a number type rather than a float and int

A hash in may ways is quite like an Io object really

io uses and and or rather than && and or
0 is true in Ruby not false like in C

true false and nil are single tones - cloning them just returns the singletone value. 
This is super simple to make. You just overwrite the clone method at the object level. Clone is a message just like everything else after all. 

two clones are not generally equal. But this way the singletons means that true == true. 

Io lets you change just about anything. 
You can overwrite the Object clone method now. NOthing can be cloned!

PHilosophy behind IO
1) Syntax should be simple - people shouldn't have to constantly look it up
2) By simplifying the semantics things become more flexible. Io is like an open ended game.
3) cost is its harder to read because of the lack of syntax.
4. Pros - it can be faster than even C apps per socket concurrency or non-SIMD vector ops.
5) Pixar have used Io.



In Io you can define a method, and then 

Oddly, method extends block. But to call a method in block, you have to pass it call. WHilst methods themselves you can pass the arguements directly to them. 

You can pass a chain of messages. They call each other and return the results. 

You can look at the arguement names for a method. The code of the method.
arguementNames, code 


when you activate a method - you get a 'locals object' 
you get a proto object - the message reciever
a self object - the message reciever
the sender - the object of the caller
thisMessage - reification of processed message 

if is done like this if(condition, true, false) or you can do 
	(condition) ifTrue() ifFalse()
it has while and forloops

method takes unlimtited arguements but the final one is the function itself.

Languages without syntactic sugar hide alot less about how they work to the user.

::= seems to create a setter method and a variable value

::= := = are different levels
= assigns a value if the slot exists
:- creates a slot and assigns a value
::= creates a slot, creates a setter, assigns a value

You can easliy change objects, add new methods, change the methods at run time. YOu can change values. It's very flexible and changable. 

::= is a good way to set up a slot but also provide a simple interface to change its value. So its good for a property for example. 

// is a comment

super means send a message directly to the proto

Dog := Object clone
Dog bark := method(writeln("woof!"))

fido := Dog clone
fido bark := method(
   writeln("ruf!")
   super(bark)
)

has a repeat method 10 repeat 




o
