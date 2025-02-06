func printV1(item: String) {
    print("---> \(item) <---")
}
func printV2(item: String) {
    print("### \(item) ###")
}
func printV3(item: String) {
    print("#***# \(item) #***#")
}

func printAllNames(names: [String], printFunc: (String) -> Void) {
    for name in names {
        printFunc(name)
    }
}

var pp: (String) -> Void = printV3

pp = { item in
    print("^^^^ \(item) ^^^^")
}


let names = ["John", "Peter", "Kevin"]

//printAllNames(names: names, printFunc: pp)

//printAllNames(names: names, printFunc: { item in
//    print("++++ \(item) ++++")
//} )

//printAllNames(names: names) { item in
//    print("!+++ \(item) !+++")
//}

printAllNames(names: names) {
    print("!+++ \($0) !+++")
}

//print(names.sorted(by: { left, right in
//    left < right
//}))

//print(names.sorted() { left, right in
//    left < right
//})

// probably the best
//print(names.sorted { left, right in
//    left < right
//})

// too short
print(names.sorted { $0 < $1 })

print(names.sorted(by: <))


func createGen(start: Int, modify: @escaping (Int) -> Int ) -> () -> (Int) {
    var myStart = start
    return { // in // we can skip it
        myStart = modify(myStart)
        return myStart
    }
}

// default for swift
//var next = createGen(start: 0) {
//    $0 + 2
//}

// to explicit
var next: () -> (Int) = createGen(start: 0, modify: {
    $0 + 2
})

print(next()) //2
print(next()) //4
print(next()) //6
print(next()) //8



var handlers: [() -> Void] = []

@MainActor
func escapingClosure(f: @escaping () -> Void) {
    handlers.append(f)
}

handlers.append {
    print("test")
}

escapingClosure {
    print("test 2")
}

for f in handlers {
    f()
}
