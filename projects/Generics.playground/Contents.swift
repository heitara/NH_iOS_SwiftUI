import Cocoa


func sum(_ a: Int, _ b: Int) -> Int {
    a + b
}

func sum(_ a: Double, _ b: Double) -> Double {
    a + b
}

func sum(_ a: String, _ b: String) -> String {
    a + b
}

protocol Summable {
    static func +(_ a: Self, _b: Self) -> Self
}

func sumGeneric<T: Summable>(_ a: T, _ b: T) -> T {
    a + b
}

extension Int: Summable {
    
}

print(sum(1,1))
print(sumGeneric(1, 1))


struct Point3D {
    var x: Double
    var y: Double
    var z: Double
}

extension Point3D: Summable {
    static func + (_ a: Point3D, _ b: Point3D) -> Point3D {
        return Point3D(x: a.x + b.x, y: a.y + b.y, z: a.z + b.z)
    }
}

print(sumGeneric(Point3D(x: 1, y: 1, z: 1), Point3D(x: 1, y: 2, z: 3)))


//func sum(_ a: Point3D, _ b: Point3D) -> Point3D {
//    a + b
//}


struct Queue<T> {
    private var storage: Array<T> = []
    
    mutating func add(item: T) {
        self.storage.append(item)
    }
    
    mutating func remove() -> T? {
        if storage.isEmpty {
            return nil
        }
        return storage.remove(at: 0)
    }
    
    var isEmpty: Bool {
        storage.isEmpty
    }
}

var queueOfInts = Queue<Int>()
queueOfInts.add(item: 1)
queueOfInts.add(item: 2)
queueOfInts.add(item: 3)
if let firstItem = queueOfInts.remove() {
    print("First item in the queue: \(firstItem)")
}


class PS5Game {
    var title: String
    var releaseDate: String
    var price: Double
    
    init(title: String, releaseDate: String, price: Double) {
        self.title = title
        self.releaseDate = releaseDate
        self.price = price
    }
}

let gta6 = PS5Game(title: "GTAVI", releaseDate: "12.2025", price: 50.0)
let nfs10 = PS5Game(title: "NFS10", releaseDate: "01.2026", price: 35.0)

var gamesToBuy = Queue<PS5Game>()
gamesToBuy.add(item: gta6)
gamesToBuy.add(item: nfs10)

if let firstGameToBuy = gamesToBuy.remove() {
    print("I want \(firstGameToBuy.title) for Christmas, please!")
}
