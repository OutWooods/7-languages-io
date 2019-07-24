1) Is Io strongly or weakly typed?

1 + 1 works but 1 + "1" does not. 
It doesn't, it's strongly typed. You cannot add booleans to 1, you cannot concatinate strings and numbers. 


2) Is 0 true or false? Is nil true or false?
   0 is true. Nil is false

3) How do you get an object's prototype slotNames?
   object proto slotNames

4) What is the difference between := ::= and =. They're different levels of power. One can only assign, one can create a slot and the top can create the slot. 

 ::= can set the slot, but also creates a setter, and assigns a value 
 := is syntactic sugar for 'setSlot'  
 = is 'update slot'  
