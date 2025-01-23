// structs
struct Merchandise {
     
// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/accesscontrol
//    private
//    fileprivate
//    internal
//    public - to be visible in another module
//    open
    
    var name: String
    var pricePerUnit: Double
    var isAvailable: Bool {
        willSet(newValue) {
            if newValue {
                print("\(name) will be available shortly!")
            } else {
                print("\(name) will NOT be available shortly!")
            }
        }
        didSet {
            // here we have access to the oldValue
            if !isAvailable  {
                print("No more \"\(name)\"!")
            }
        }
    }
    
    
    // the best init to define, because the compiler will generate the rest
    init(name: String = "no name", pricePerUnit: Double = 0.0, isAvailable: Bool = false) {
        self.name = name
        self.pricePerUnit = pricePerUnit
        self.isAvailable = isAvailable
        // do some extra actions in here
        //self.printMe()
    }
    
    init(shortName: String) {
        self.init(name:  "^" + shortName + "^", pricePerUnit: 0, isAvailable: false)
    }
    
    func printMe() {
        // in the context of aNewNokia instance self is aNewNokia
        print("\"\(self.name)\" costs \(pricePerUnit) \(isAvailable ? "is available" : "is NOT available")")
    }
    
    mutating func increasePrice(with: Double = 0.0) {
        self.pricePerUnit += with
    }
    
//    init(name: String) {
//        
//    }
//    
//    init(name: String, isAvailable: Bool) {
//        
//    }
    
    subscript(index: Int) -> String {
        get {
            if index == 0 {
                return "name"
            }
            
            if index == 1 {
                return "pricePerUnit"
            }
            
            if index == 2 {
                return "isAvailable"
            }
            
            return "undefined"
        }
        set(newValue) {
            // do nothing
        }
    }
    
    subscript(coordinates: Point) -> String {
        get {
            return "undefined"
        }
        set(newValue) {
            // do nothing
        }
    }
    
    var realPricePerUnit: Double {
        get {
            return self.pricePerUnit * 0.8
        }
            
        set (newValue) {
            self.pricePerUnit = newValue * 1.25
        }
    }
    
    var version: String {
        get {
            return "0.0.1"
        }
    }
    
    lazy var counter = LazyStruct()
    
//    var version: String {
//        return "0.0.1"
//    }
    
//    var version: String {
//        "0.0.1"
//    }
}


// (name: String, pricePerUnit: Double, isAvailable: Bool)

struct Point {
    var x = 0
    var y = 0
    
    static let zero = Point()
}

struct LazyStruct {
    var count: Int
    init(count: Int = 0) {
        print("\(LazyStruct.self).\(#function) was invoked!")
        self.count = count
    }
}



var phone: Merchandise = Merchandise(name: "Nokia 3310", pricePerUnit: 200.0, isAvailable: false)

print(phone)
print("Lazy property is not initialised!")
print(phone.counter.count)
print(phone)

print(phone.name)
print(phone.isAvailable)

phone.printMe()

//"\" "

var nothing = Merchandise()
print("\"\(nothing.name)\" costs\n\(nothing.pricePerUnit)")

var iPhone = Merchandise(name: "iPhone")
//var iPhone11 = Merchandise(name: "no name", pricePerUnit: 0.0, isAvailable: false)
let iPhone11 = Merchandise(name: "iPhone11", isAvailable: true)

// methods with default values (demo that with functions too)

func sums(a: Int = 1, b: Int = 1, c: Int = 0) -> Int {
    return a + b + c
}

print(sums())
print(sums(a: 2))
print(sums(b: 2))
print(sums(a:2, b: 2))

//iPhone11.name = "New iPhone 11 v.2" // iPhone11 is a constant

phone.isAvailable = true
// phone.name = Nokia 3310
phone.printMe()

var aNewNokia = phone // what happens here?
aNewNokia.name = "Nokia 3310 New"
aNewNokia.increasePrice(with: 100)

aNewNokia.printMe()

var nothingPhone = Merchandise(shortName: "Nothing 2")
nothingPhone.increasePrice(with: 500) // can't use mutating methods with constants
nothingPhone.printMe()

func maxValue(_ numbers: Int...) -> Int {
    var max = Int.min
    for v in numbers {
        if max < v {
            max = v
        }
    }
    return max
}

func maxValue(_ numbers: Int..., strs strings: String..., bools: Bool...) -> Int {
    var max = Int.min
    for v in numbers {
        if max < v {
            max = v
        }
    }
    return max
}


print(maxValue(1, 12, 3, 14, 5, 10))
print(maxValue(1, 12, 3, 14, 5, 10, strs: "A", "B", "C"))
print(maxValue(1, 12, 3, 14, 5, 10, strs: "A", "B", "C", bools: false))


// array

let goods = [phone, iPhone, iPhone11, nothingPhone]
//let goods: [Merchandise] = [phone, iPhone, iPhone11, nothingPhone]
//let goods: Array<Merchandise> = [phone, iPhone, iPhone11, nothingPhone]
goods[2].printMe() // the index shouldn't exceed array.count - 1


print(phone[1])


print(phone[Point.zero])
//print(phone[.zero]) // Swift compiler can identify the subscript


phone.realPricePerUnit = 100 // this triggers the set(newValue)


// func

func max(a: Int, b: Int) -> Int {
    a > b ? a : b
}

phone.realPricePerUnit = 250
nothingPhone.isAvailable = false
//phone.version = "2.0.0" // version property is get-only/ computed

// homework

