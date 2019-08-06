jesus := Object clone
jesus pray := method(
           "hey there!" println
	   yield
	   "hows it going?" println
	   yield)

god := Object clone
god answer := method(
	   "good thanks!" println
	   yield
	   "honestly really good" println)

//jesus @@pray; god @@answer

result := URL with("http://google.com/") @fetch

"I will run first" println

writeln("fetched", result size, "bytes")

"I may run again" println

