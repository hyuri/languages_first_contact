class Human
	prop name: string
	prop age: int
	prop gender: string
	
	construct(newName: string, newAge: int, newGender: string)
		self.name = newName
		self.age = newAge
		self.gender = newGender
		
	def speak(phrase:string)
		print phrase

init
	var hyuri = new Human("Hyuri", 19, "Male")
	hyuri.speak("Testando")
	
	print hyuri.name
	print hyuri.age.to_string()
	print hyuri.gender
	
	stdin.read_line()
