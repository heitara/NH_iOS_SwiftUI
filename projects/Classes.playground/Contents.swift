class Media {
    var name: String
    var sizeInBytes: Double
    
//    init() {
//        self.name = ""
//        self.sizeInBytes = 0.0
//    }
    // with classes we need at least one init(), except in the cases where we have default values for all stored
    //props in which case we get a default init() - no args.
    init(name: String = "", sizeInBytes: Double = 0.0) {
        self.name = name
        self.sizeInBytes = sizeInBytes
        print("A new media was constructed!")
    }
}


//Protocol Oriented Programming

protocol Sellable {
    var pricePerUnit: Double { get }
    // obj.pricePerUnit
    
    
    var isAvailable: Bool { set get }
    // obj.isAvailable = true; var b = obj.isAvailable
    
    func version() -> String
}

protocol Printable {
    var description: String { get }
    func version() -> String
}

struct Machine: Sellable, Printable {
    var description = ""
    var powerConsumption = 0
    var model = "no name"
    
    var pricePerUnit: Double = 0 // set get
    var isAvailable: Bool = false
    
    private(set) var machineSoftwareVersion = "0.1"
    
    func version() -> String {
        "V. (\(machineSoftwareVersion))"
    }
}

let washingMachine = Machine(description: "Washing Machine", powerConsumption: 500, model: "LG", pricePerUnit: 300, isAvailable: true, machineSoftwareVersion: "1.0.1")

//print(washingMachine.version())

//let printableMachine: Printable = washingMachine





let movie = Media(name: "", sizeInBytes: 100.0)
movie.name = "X-men" // not possible if Media is a struct !!!
print("Media name: \(movie.name)")
// movie = Media(name: "X-men 2") - not possible


// * mandatory init
// * we can have 2 or more variables or constants using the same instance

var ref = movie
print("Media name: \(ref.name)")
movie.name = "X-men 2"

print("Media name: \(ref.name)")


// base class - doesn't inherit from anything
class Show {
    var name: String
    var color: String
    var country: String
    var language: String
    var duration: Double
        
    init() {
        name = " no name "
        color = "noColor"
        country = "no country"
        language = "BG"
        duration = 0.0
    }
    
    convenience init(name: String = "empty") {
        self.init()
        self.name = name
    }
    
    var durationInMinutes: String {
        let minutes = Int(duration)
        let minutesInHour = 60
        return "\(minutes / minutesInHour) : \(minutes % minutesInHour) min"
    }
    
    func shortDescription() -> String {
        return "\(name) - \(language) :  Duration: \(durationInMinutes)"
    }
    
    deinit {
        print("\(Show.self) \(#function)" )
    }
}

var friends = Show(name: "Friends")
print(friends.shortDescription())

class TVShow: Show {
    var series: Int
    
//    override init() {
//        series = 0
//        super.init()
//    }
//    
    init(name: String) {
        print("\(TVShow.self) \(#function)")
        series = 0
        super.init() //designated init()
        super.name = name
    }
    
    convenience override init() {
        self.init(name: "")
    }
        
    var isTurkish:Bool {
        return self.language == "TR" && self.series > 100
    }
    
    override func shortDescription() -> String {
//        return super.shortDescription() + " v.2"
        "v. 2.0"
    }
            
    deinit {
        print("deinit TVShow called \(name)")
    }
}

// no inheritance
class TVShow2 {
    var name: String
    var color: String
    var country: String
    var language: String
    var duration: Double
        
    init() {
        name = " no name "
        color = "noColor"
        country = "no country"
        language = "BG"
        duration = 0.0
        series = 0
    }
    
    var durationInMinutes: String {
        let minutes = Int(duration)
        let minutesInHour = 60
        return "\(minutes / minutesInHour) : \(minutes % minutesInHour) min"
    }
    
    func shortDescription() -> String {
        return "\(name) - \(language) :  Duration: \(durationInMinutes)"
    }
    
    var series: Int
    
    init(name: String) {
        series = 0
        color = "noColor"
        country = "no country"
        language = "BG"
        duration = 0.0
        self.name = name
    }

    deinit {
        print("deinit TVShow2" )
    }
}

//let tvShow = TVShow()


class ColorfulTVShow: TVShow {
    var version: String
    
    init(version: String) {
        self.version = version
        super.init(name: "") // again designated init
    }
}

var blackSails: TVShow = TVShow(name: "Black Sails")
print(blackSails.shortDescription())



// * memory management! - Automatic Reference Counting

var blackSails2: TVShow? = TVShow(name: "Black Sails 2")
if let blackSails2 {
    let bSails = blackSails2
}
blackSails2 = nil


class Book {
    let title: String
    let author: Author
    var genre: String?
    var pages: Int = 0
    
    init(title: String, author: Author) {
        print("\(Book.self) \(#function)")
        self.title = title
        self.author = author
    }
    
    deinit {
        print("Deinit a book instance with title \(self.title) ")
    }
}

class Author {
    let name: String
    //weak var book:Book?
    weak var book: Book? // nil
    var age: Int
    var isAlive: Bool
    
    init(name:String, age: Int, isAlive: Bool) {
        print("\(Author.self) \(#function)")
        self.name = name
        self.age = age
        self.isAlive = isAlive
    }
    
    deinit {
        print("Deinit an Author instance with name \(self.name) ")
    }
}

var author: Author? = Author(name: "J.K. Rowling", age: 50, isAlive: true)

var book: Book? = Book(title: "Harry Potter and the Goblet of Fire", author: author!)
if let author, let book {
    author.book = book
}
book = nil
author = nil


class Student {
    let name: String
    var age = 19
    var card: StudentCard?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("Init a student instance.")
    }
    
    func printStudent() {
        print("Name: \(name) ")
        print("Age: \(age) ")
    }
    
    deinit {
        print("deinit a student instance")
    }
}

class StudentCard {
    let university: String
    let number: String
    
    
//    unowned(unsafe) let student:Student
    unowned let student: Student //not optional
//    weak var student: Student?
//    let student: Student
    
    init(uni: String, number: String, student: Student) {
        university = uni
        self.number = number
        self.student = student
        print("\(StudentCard.self) \(#function)")
    }
    
    deinit {
        print("deInit a student-card instance - \(self.number)")
    }
}

var student: Student? = Student(name: "John", age: 20)
var studentId: StudentCard? = StudentCard(uni: "MIT", number: "10000563482", student: student!)

student?.card = studentId

studentId = nil // -1
student = nil // deinit a student instance


class DataType {
    let name: String
    var properties: Array<String> //[String]
    
    let prettyPrint = true
    
    init(name: String) {
        self.name = name
        properties = []
    }
    
    lazy var toSwift: () -> String = { [weak self] in
  //        [unowned self, name = self.name] in
        guard let self else { return "" }

        var swiftCode: String = "class \(self.name) {"
        
        if self.prettyPrint {
            swiftCode += "\n"
        }
        
        for property in self.properties {
            if self.prettyPrint {
                swiftCode += "\t"
            }
            swiftCode += property
        }
        
        if self.prettyPrint {
            swiftCode += "\n"
        }
        
        swiftCode += "}"
        
        return swiftCode
    }
    
    deinit {
        print("Deinit dataType instance \(self.name)")
    }
}

var studentDataType: DataType? = DataType(name: "Student")
studentDataType?.properties.append("var name: String = \"no name\"")
print(studentDataType?.toSwift())
studentDataType = nil

