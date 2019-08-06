Builder := Object clone
Builder indentation := 0

Builder forward := method(
		    writeln(Range(0, self indentation) foreach(" ") , "<", call message name, ">")

		    call message arguments foreach(
		      arg,
		      self indentation := self indentation + 2
		      content := self doMessage(arg)
		      if(content type == "Sequence", writeln(indentation, content)))
		    
		    self indentation := self indentation - 2
		    writeln(self indentation, "</", call message name, ">")
		    )


Builder ul(
          li("IO")
	  li("Lua")
	  li("Javascript")
	)
