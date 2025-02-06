enum Directions: String {
    case up
    case down
    case left
    case right
}

enum Weapon: Int {
    case bow = 1
    case sword = 10
    case spear = 1001
    case dagger = 11
}

struct Player {
    enum Weapon: String {
        case bow
        case sword
        case spear
        case dagger
    }
    
    enum Character {
        case thief
        case warrior
        case knight
        case wizard
    }
}

let weapon = Player.Weapon.bow
let weapon2 = Weapon.bow


extension Directions: CaseIterable {
    
}

protocol Printable {
    func printValue()
}

extension Directions {
    var toString: String {
        switch self {
        case .up:
            "up"
        case .down:
            "down"
        case .left:
            "left"
        case .right:
            "right"
        }
    }
}

extension Directions: Printable {
    func printValue() {
        print(self.toString)
    }
}

var characterDirection: Directions = .down

characterDirection.printValue()
print(characterDirection.rawValue)

for direction in Directions.allCases {
    direction.printValue()
}

enum Trade {
    case buy(stock: String, amount: Int)
    case sell(stock: String, amount: Int)
}

//let incorrectUsage = Trade.buy
let trade = Trade.buy(stock: "APPL", amount: 500)
let newTrade = Trade.buy(stock: "APPL", amount: 100)

if case let Trade.buy(stock, amount) = trade {
    print("buy \(amount) of \(stock)")
}

extension Trade {
    var toString: String {
        switch self {
        case .buy(stock: let stock, amount: let amount):
            "buy \(amount) of \(stock)"
        case .sell(stock: let stock, amount: let amount):
            "sell \(amount) of \(stock)"
        }
    }
    
    static func ==(lhs: Trade, rhs: Trade) -> Bool {
       switch (lhs, rhs) {
       case let (.buy(stock1, amount1), .buy(stock2, amount2))
             where stock1 == stock2 && amount1 == amount2:
             return true
       case let (.sell(stock1, amount1), .sell(stock2, amount2))
             where stock1 == stock2 && amount1 == amount2:
             return true
       default: return false
       }
    }
}

print(trade.toString)
print(newTrade.toString)
print(newTrade == trade)

extension Trade: Equatable { }

print(newTrade != trade)


//Hashable
//Identifiable
//Equatable // ==
//Codable  // to and from JSON
