// Enhance the XML program to add spaces to show the indentation structure

Builder := Object clone
Builder indentation := 0

Builder forward := method(
		    writeln(if(self indentation > 0, self indentation repeat(" " print), ""), "<", call message name, ">")

		    call message arguments foreach(
		      arg,
		      self indentation := self indentation + 2
		      content := self doMessage(arg)
		      if(content type == "Sequence", writeln(self indentation repeat(" " print), content)))

		    self indentation := self indentation - 2
		    writeln(if(self indentation > 0, self indentation repeat(" " print), ""), "<", call message name, ">")
		    )


Builder ul(
          li("IO")
	  li("Lua")
	  li("Javascript")
	)

// Create a list syntax that uses brackets

// One mistake I nearly made here here is not to do 'doMessage' on the arguement values. Otherwise - all you get are Messages in your list. You need to evaluate the arguement to make sure you get the right object type

squareBrackets := method(
  li := List clone

  call message arguments foreach(value,
    li append(doMessage(value))
    )

  li
)

test := [1,2,3]
test sum println

// (Incomplete)
// Enhance the XML program to allow attributes - if the first arguement is a map add attributes to the XML programme.
// E.g. a({"href":"www.google.com"}) would print <a href="www.google.com">

Builder := Object clone
Builder indentation := 0

Builder forward := method(
                    attributes := doMessage(call message arguments[0]

		    if(attributes type === "Map",
			    attributes := attributes map(arguement,

			    call message arguements remove(0)

			    ,
			    attributes := ''
		    writeln(if(self indentation > 0, self indentation repeat(" " print), ""), "<", call message name, ">")

		    call message arguments foreach(
		      arg,
		      self indentation := self indentation + 2
		      content := self doMessage(arg)
		      if(content type == "Sequence", writeln(self indentation repeat(" " print), content)))

		    self indentation := self indentation - 2
		    writeln(if(self indentation > 0, self indentation repeat(" " print), ""), "<", call message name, ">")
		    )
