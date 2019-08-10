class Terminal
	def input(phrase: string = ""): string
		if phrase is not ""
			print phrase
		
		var _userInput = stdin.read_line()
		return _userInput

	def output(text:string)
		print text

init
	var terminal = new Terminal
	var name = terminal.input("Write your name and press ENTER:")
	
	terminal.output("Hello, " + name)
	//stdin.read_line()
