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
