var greeting = "Hello, playground" // variable name shouldn NOT start with digit (0,9)
// should not be a keyword - special words in Swift
var number = 123
var age = 20

// this is a comment
var `var` = 123 // JUST in some edge cases
print(`var`)

var 😀 = "happy" //DON'T do it
print(😀)

age = 18

let carName: String = "Tesla"

// String - text information
// Int - integer numbers
// Double, Float - numbers
// Bool - boolean - true & false

// Array - a list of the same types
// Dictionary - (key : value) pairs
// Set - a set of same type
/*
 multi
 line
 comment
 */
var name: String = ""

print(name) // nil [== null in other languages]
// nil

//carName = "1234"

if age < 21 {
    print("Can't smoke in the USA!")
    //action2()
}

// if (age < 21) print("Can't smoke in the USA!")

var a = 10
a += 1// a++ not valid in Swift
// a+++++b
    

if (age < 21) { // Swift devs prefer to skip ( and )
    // the same ...
}
// 10% write vs  90% read

//i = 123 % 6
//array[i]
let numbers = [1,2,3]
var index = 0


if number > 1000 {
    index = 1
} else {
    print("number is less than 1000")
    index = 2
}

print(numbers[index])
print(numbers[number>1000 ? 1:2])

var students = ["Anton", "Peter", "John"]
var grades = [[], [6.0, 6.0], [5.0]]

var arrayOfInts: [Int] = []
var arrayOfInts2 = [Int]()
arrayOfInts2 = [1]
print(arrayOfInts2)
//IDE
if index > 1 {
    var arrayOfInts2 = [Double]()
    print("In the if: ", arrayOfInts2)
    if index > 1 {
        print("In the inner if: ", arrayOfInts2)
    }
}

//var arrayOfInts: [Int] = []

print(grades)
number = 10

if number > 100 {
    
} else if number > 50 {
    
} else if number > 0 {
    print("\(number) is less than 50 and greater than 0")
} else if number == 0 {
    print("Zero!")
} else {
    print ("\(number) is negative!")
}
number = 1
switch number {
case 50...100:
    print ("\(number) is > 50 && < 100!")
    fallthrough
case 0,1:
    print ("\(number) is zero or one")
//    break
//    print("Zero!")
default:
    print("Can't decide?!")
}

let person: (name: String, role: String, technologies: [String]) = (name: "Emil", role: "Trainer", technologies: ["Swift", "Node.JS"])
print(person.technologies)

let (pName, pRole, _) = person
print(pName)
print(pRole)


let point = (1, 0)
switch point {
    case (0, 0):
        print("point (0,0)")
    case (_, 0):
        print("point (\(point.0), 0)")
    case (0, _):
        print("point (0, \(point.1)) is laying on у")
    case (-2...2, -2...2):
        print("point (\(point.0), \(point.1)) is in square")
    default:
        print("point (\(point.0), \(point.1)) is out of square")
    }


for number in 1..<4 {
    print(" => \(number)")
    if number == 1 {
        continue
    }
    break
}

let technologies = ["Swift", "iOS", "Android", "Node.JS"]

for technology in technologies {
    print("-> \(technology)")
}

for (index,technology) in technologies.enumerated() {
    print("\(index + 1). \(technology)")
}

for item in technologies.enumerated() {
    print("\(item.offset + 1). \(item.element)")
}

var shouldBreak = false
for i in 1...5 {
    var line = ""
    for j in 1...5 {
        line += "\(j) "
        shouldBreak = true
        break // breaks the most inner one
    }
    print(line)
    if shouldBreak {
        break
    }
}

let base = 2
let power = 8
var answer = 1
for _ in 1...power {
    answer *= base
}
print("2 ^ 8 = \(answer)")


let HIGH_SPEED = 250
let carsTopSpeed: [String: Int] = ["BMW": 260, "Tesla X": 255, "Fiat": 210]
// TIP: keys of a dictionary are not ordered!
for (car, topSpeed) in carsTopSpeed {
    if topSpeed > HIGH_SPEED {
        print("\(car) is really fast!")
    }
}

let classMembers = ["Emil": (15, ["Swift", "NodeJS"]), "Peter": (20, ["C++", "Assembler"])]
// https://github.com/swiftlang/swift/blob/main/stdlib/public/core/Dictionary.swift
let evenOrOdd: Dictionary<Int, Bool> = [2: true, 1: false, 4: true, 3: false]
print(evenOrOdd[2])


//while & repeat { } while
var condition = true
var x = 1
var shouldInterrupt = false
while x < 10 && !shouldInterrupt {
//    print("While loop body")
    print(x)
    x += 1
    // shouldInterrupt = true
}

x = 1
//0 or more
while condition {
    print(x)
    x += 1
    condition = x < 10
}

// 1 or more
repeat {
    if condition {
        
    }
} while condition



//incorrect range leads to a compilation error
//let r = 100...10


// optional types

var myVar: Int? = 10

if let myVar {
//if let myVar = myVar {
    print(myVar)
    var sum = 5 + myVar
    print(sum)
} else {
    print("Missing value in myVar!")
}

var evCar: (model: String, speed: Int, year: Int, brand: String)? = nil

if let myVar, myVar > 7 {
    evCar = (model: "X", speed: 250, year: 2010, brand: "Tesla")
    if let evCar {
        print("This is \(evCar.brand) model \(evCar.model)!")
    }
}

var listOfStudents: [(name: String, grades: [Int]?)] = []

listOfStudents.append((name: "Emil", grades: nil))

print(listOfStudents)

if let myVar, let evCar {
    print("myVar has a value!")
    print("This is \(evCar.brand) model \(evCar.model)!")
}

if let myVar {
    print("Sum = \(5 + myVar)")
}

let myVar2 = myVar ?? 0
print("[myVar2] Sum = \(5 + myVar2)")

// Don't use !
print(evCar?.brand ?? "missing value")

// if let

// functions

func nameOfAFunction() {
    print("Action 1")
    print("Action 2")
    print("Action 3")
}



nameOfAFunction()
nameOfAFunction()
nameOfAFunction()

//func functionName(labelName variableName: String) -> String {
func functionName(variableName: String) -> String {
    let returnedValue = variableName + " was passed"
    return returnedValue
}

let myResult = functionName(variableName: "Swift 6.0")


func printPositiveNumber(num: Int) {
    if num <= 0 {
        return
    }
//    print(num)
    printPositiveNumber(num: num - 1)
    print(num)
}


/// A -> B -> A

printPositiveNumber(num: 10)
//printPositiveNumber(10)


//func draw(shape: Shape, in: Rect) {
//
//}

//draw(shape: cirle, in: topLeftSquare) // Swift
//draw(cirle, topLeftSquare) // C+


// print(num) is before the recursive call
//10
//9
//8
//7
//6
//5
//4
//3
//2
//1

// print(num) is after the recursive call
//1
//2
//3
//4
//5
//6
//7
//8
//9
//10

func functionName(labelNameNew prefix: String) -> String {
    let returnedValue = prefix + " NEW was passed"
    return returnedValue
}

functionName(labelNameNew: "Swift 6")

// a function with no arguments that returns a value
func seven() -> Int {
    return 7
}
        
let s = seven()
print("This is a number -> \(seven()) ")

// a function with 2 Int parameters that doesn't return anything
func printSum(a: Int, b: Int) {
    print("Sum \(a) + \(b) = \(a + b)")
}

func printSum(a1: Int, b: Int) {
    print("Sum \(a1) + \(b) = \(a1 + b)")
}
        
printSum(a: 3, b: 5) // two different functions, names of the parameters are part of the function "name"
printSum(a1: 3, b: 5)

func maxItemIndex(numbers: [Int]) -> (item: Int, index: Int)? {
    var index = -1
    var max = Int.min
    
//    if numbers.count == 0
    if numbers.isEmpty {
        return nil
    }
    
    for (i, val) in numbers.enumerated() {
        if max < val {
          max = val
          index = i
        }
    }
        
    return (max, index)
}
        
if let maxItemTuple = maxItemIndex(numbers: [3, 2, 6, 3, 12, 4, 5, 2, 10]) {
    if maxItemTuple.index >= 0 {
        print("Max item is \(maxItemTuple.item).")
        print("Max item index is \(maxItemTuple.index).")
    }
}


func getEVBrand(evCar: (model: String, speed: Int, year: Int, brand: String)?) -> String? {
    if let evCar {
        // actions with evCar
        
        
        return evCar.brand
    }

    
    return nil
}


// in function guard
func getEVBrand2(evCar: (model: String, speed: Int, year: Int, brand: String)?) -> String? {
    guard let evCar = evCar else {
        return nil
    }
    
    
    // actions with evCar
    
    return evCar.brand
}

func sum(from: Int, to: Int) -> Int? {
    if from > to {
        return nil
    }
    var accumulator = 0
    func iterator(i: Int) {
        if i > to {
            return
        }
        accumulator += i
        iterator(i: i + 1)
    }
    
    iterator(i: from)
    
    return accumulator
}

let sumNumber = sum(from: 1, to: 10)

let trainer = (name: "Emil", role: "Trainer", technologies: ["Swift", "Node.JS"])
let trainers = [trainer]

func listTrainers() {
    for trainer in trainers {
        print("\(trainer.name) knows \(trainer.technologies)")
    }
}

listTrainers()

var v1 = "one"
var v2 = "two"

print("\(v1) -> \(v2)") //one -> two


// v1 and v2 are 'let' constants
//func swap(v1: String, v2: String) {
//    var temp = v1
//    v1 = v2
//    v2 = temp
//}

// swap values
//func swap(v1: String, v2: String) -> (String, String) {
//    let result = (v2, v1)
//    return result
//}

//(v1,v2) = swap(v1: v1, v2: v2)
func swap(v1: inout String, v2: inout String) {
    var temp = v1
    v1 = v2
    v2 = temp
}

swap(v1: &v1, v2: &v2)


print("\(v1) -> \(v2)") // two -> one

let c1 = "one"
let c2 = "two"

//swap(v1: &c1, v2: &c2)
var year = 2025
//let swiftVersion: Int = year >= 2024 ? 6 : 5
let swiftVersion: Int
if year >= 2024 {
    swiftVersion = 6
} else {
    swiftVersion = 5
}

print(swiftVersion)

print(5 * 5)
let correct = true
let inCorrect = !correct //prefix

// postfix !, ?

// infix

print(1 + (3 * 7) + 10)


extension String {
    //infix
    static func * (left: String, right: Int) -> String {
        if  right <= 0 {
            return ""
        }
        
        var result = left
        for _ in 1..<right {
            result += left
        }
        return result
    }
}



print("Hello ! " * -10)


func sum(_ from: Int,_ to: Int) -> Int? {
    if from > to {
        return nil
    }
    var accumulator = 0
    func iterator(i: Int) {
        if i > to {
            return
        }
        accumulator += i
        iterator(i: i + 1)
    }
    
    iterator(i: from)
    
    return accumulator
}

print(sum(1, 100) ?? "???")

// structures
