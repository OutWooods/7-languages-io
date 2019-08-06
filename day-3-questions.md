// Enhance the XML program to add spaces to show the indentation structure

Builder := Object clone
Builder forward := method(
                    value,
		    writeln("<", call message name, ">")
		    call message arguments foreach(
		      arg,
		      content := self doMessage(arg)
		      if(content type == "Sequence", writeln(content))
		    writeln("</", call message name, ">")


Builder ul(
          li("IO")
	  li("Lua")
	  li("Javascript")
	)
