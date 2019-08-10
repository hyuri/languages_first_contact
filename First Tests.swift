// Extending Classes
extension String {
    func len()->Int {
        var length = 0
        
        for i in self {
            length += 1
        }
        
        return length
    }
    
    func multi(times: Int)->String {
        var new_string = ""
        
        for i in 1...times {
            new_string += self
        }
        
        return new_string
    }
}

extension Int {
    func len()->Int {
        var length = 0
        
        for i in String(self) {
            length += 1
        }
        
        return length
    }
}

print("uga length:", "uga".len(), "|", "123 length:", 123.len(), "\n")

// Classes and Inheritance

class Human {
    var sex: String
    var age: Int
    init(human_sex: String, human_age: Int) {
        sex = human_sex
        age = human_age
    }
}

class Person: Human {
    var name: String
    init(person_name: String, person_sex: String, person_age: Int) {
        name = person_name
        super.init(human_sex: person_sex, human_age: person_age)
    }
}

var hyuri = Person(person_name: "Hyuri", person_sex: "Male", person_age: 26)
print(hyuri.name, hyuri.sex, hyuri.age, "\n")

var dict = ["one": 1, "two": 2, "three": 3]

var list = ["a", "b", "c"]

for (index, item) in list.enumerated() {
    print("Item:", item, "Index: \(index)", "Uga".multi(times: index + 1))
}