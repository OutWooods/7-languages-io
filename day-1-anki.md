What does ::= do?, is a good way to set up a slot but also provide a simple interface to change its value. So its good for a property for example. 
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
Name 3 prototype based languages?,JS - IO - Lua
What are prototype languages?,every object is a clone of another object
Whats the difference between IO and Ruby in their approach to OO?,IO doesn't need an abstract classes - you just make an object and inherit from another one. Any object can be a prototype for a new object.
What's does using a prototype language over class based this mean for the stability of object methods etc at run time?,Objects can be changed at run time very easily.
How is a new instance made in a class based language?,The class will have a constructor function - where you can pass properties in
Are JS classes legit?,They are not truely classes - they are syntactic sugar
What is the message-reciever structure of IO?,In IO you have messages and recievers. Messages return an object
How does "Hi ho IO" print work?,YOu are sending the print message to the sequence (string).
WHat is the base design in IO?,The root Object
WHat do all objects have in IO?,slots - essentially a hash. Each slot has a key
How do you see the slots an object has in IO?,slotNames
What's the difference between an object with a capital and non-capital in IO?,nothing really but capitals will be given a type slot with their names
How do you make a singleton in IO?,overwrite the clone method so it returns itself. You can do this for anything in IO. Which makes it fun but also risky.
How do you clone an object?,tree := Plant clone
What are methods in IO?,just another object - so you can put them in slots too
What are the two key types of collections in IO?,lists and maps
How is JS like IO in its approach to numbers?,it has a number object no float or int
What languages is 0 true in?,ruby and IO
What type of object are true - false - nil?,singletones - they return themselves
What is the core philosophy of IO?,syntax is simple so you don't have to look it up - simplicity leads to flexibility and control. 
How does an object send a message to a prototype class?,super
