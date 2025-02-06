//Protocol Oriented Programming

protocol Sellable {
    var pricePerUnit: Double { get }
    // obj.pricePerUnit
    
    
    var isAvailable: Bool { set get }
    // obj.isAvailable = true; var b = obj.isAvailable
    
    func version() -> String
    
    // static props and methods
    // init()
}

protocol Printable {
    var description: String { get }
    func version() -> String
}

protocol UpdatablePrintableSellable: Sellable, Printable {
    mutating func update()
}

struct Machine: Printable & Sellable {
    var description = ""
    var powerConsumption = 0
    var model = "no name"
    
    var pricePerUnit: Double = 0 // set get
    var isAvailable: Bool = false
    
    private(set) var v = 1
    private(set) var machineSoftwareVersion = "0.1"
    
    func version() -> String {
        "V. (\(machineSoftwareVersion))"
    }
    
    mutating func update() {
        v += 1
        machineSoftwareVersion = "0.\(v)"
    }
}

var washingMachine = Machine(description: "Washing Machine", powerConsumption: 500, model: "LG", pricePerUnit: 300, isAvailable: true, machineSoftwareVersion: "1.0.1")

washingMachine.update()

if let printableMachine = washingMachine as? (Printable & Sellable)  {
    print(printableMachine.version())
} else {
    print("The instance doesn't conform the protocol.")
}

func shortDescription(item: Printable & Sellable) -> String {
    "Item: \(item.description) @ \(item.version())"
}

print(shortDescription(item: washingMachine))


class City {
    var name: String
    var latitude: Double
    var longitude: Double
    
    var pricePerUnit: Double = 0 // set get
    var isAvailable: Bool = false
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
}

// there are not stored properties in the extension
extension City: Printable, Sellable {
    var description: String {
        "City \(name) is located at (\(latitude), \(longitude))."
        
    }
    
//    func version() -> String {
//        "v. 0.1"
//    }
}

extension Printable {
    func version() -> String {
        "v. unknown"
    }
}

extension Int {
    var toEUR: String {
        "\(self) EUR"
    }
    
    var toUSD: String {
        "$\(self)"
    }
}


print("\(5.toEUR) is not equal to \(5.toUSD)!")

let ny = City(name: "New York", latitude: 40.7128, longitude: -74.0060)
print(ny.version())
print(shortDescription(item: ny))


extension City {
    var documentation: String {
        "Really long documentation goes here..."
    }
}

print(ny.documentation)
