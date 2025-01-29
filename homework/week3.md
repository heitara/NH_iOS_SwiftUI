### Task 1: **Area Calculator**

**Objective**: Practice structs, functions and protocols.

Create a protocol `Shape` with a function `area() -> Double`.  
Create the following structs that conform to the `Shape` protocol:

1.  `Rectangle` with properties `width` and `height`.
2.  `Circle` with property `radius`.

Implement the `area` function for both structs.

**Extra Task**: Add an extension to the `Shape` protocol to include a `description` property that returns the name of the shape.
**Extra Task**: Create a list of `Shape`-s and calcualte their total `area`.

**Example**:
```swift
let rectangle = Rectangle(width: 5, height: 10)
print(rectangle.area()) // Output: 50.0
print(rectangle.description) // Output: Rectangle

let circle = Circle(radius: 7)
print(circle.area()) // Output: ~153.94
print(circle.description) // Output: Circle

```


### Task 2: **Person and Employee**

**Objective**: Practice classes and inheritance.

Create a base class `Person` with the following properties:

*   `name: String`
*   `age: Int`

Add a method `greet()` that prints: `"Hi, I'm [name] and I'm [age] years old."`

Create a subclass `Employee` that inherits from `Person` and adds:

*   `jobTitle: String`

Override the `greet()` method to include the job title: `"Hi, I'm [name], a [jobTitle], and I'm [age] years old."`

**Extra Task**: Add an initializer to `Employee` that calls the base class designated initializer.

**Example**:
```swift
let person = Person(name: "Alice", age: 25)
person.greet() // Output: Hi, I'm Alice and I'm 25 years old.

let employee = Employee(name: "Bob", age: 30, jobTitle: "Engineer")
employee.greet() // Output: Hi, I'm Bob, a Engineer, and I'm 30 years old.

```

### Task 3: **Power Consumption**

**Objective**: Practice protocols and extensions.

Create a protocol `Appliance` with:

*   A property `powerUsage: Double` (in watts).
*   A function `calculateMonthlyConsumption(hours: Double) -> Double`.

Create two structs, `WashingMachine` and `Refrigerator`, conforming to `Appliance` protocol.

*   `WashingMachine` should have a power usage of 500 watts.
*   `Refrigerator` should have a power usage of 100 watts.

Add an extension to the `Appliance` protocol to provide a default implementation of `calculateMonthlyConsumption(hours:)`.

**Extra Task**: Add a computed property `description` in the extension that returns a string: `"This appliance uses [powerUsage] watts each month."`

**Extra Task**: Update the implementation so it includes consumption per hour. Each appliance should have average number of hours per each month.

**Example**:

```swift
let washingMachine = WashingMachine()
print(washingMachine.description) // Output: This appliance uses 500 watts.
print(washingMachine.calculateMonthlyConsumption(hours: 30)) // Output: 15,000 watts

let refrigerator = Refrigerator()
print(refrigerator.description) // Output: This appliance uses 100 watts.
print(refrigerator.calculateMonthlyConsumption(hours: 720)) // Output: 72,000 watts

```



### Task 4: **Library**

**Objective**: Combine structs, protocols, and functions.

1.  Create a struct `Book` with properties:

    *   `title: String`
    *   `author: String`
2.  Create a protocol `Borrowable` with:
    
    *   A function `borrow()`
    *   A function `returnBook()`
3.  Create a class `Library` with:
    
    *   A property `books: [Book]`.
    *   Functions `addBook(_:)` and `removeBook(_:)`.

Conform `Library` to the `Borrowable` protocol:

*   `borrow()` should remove a book from the collection.
*   `returnBook()` should add the book back.

**Extra Task**: Add an extension to `Library` to include a method `listBooks()` that prints all available books.

**Example**:

```swift
var library = Library()
library.addBook(Book(title: "1984", author: "George Orwell"))
library.addBook(Book(title: "To Kill a Mockingbird", author: "Harper Lee"))

library.listBooks()
// Output:
// 1. 1984 by George Orwell
// 2. To Kill a Mockingbird by Harper Lee

library.borrow()
// Output: Borrowed 1984
library.listBooks()
// Output: 1. To Kill a Mockingbird by Harper Lee

```

### Task 5: **Vehicles**

**Objective**: Practice classes, inheritance, and extensions.

Create a base class `Vehicle` with properties:

*   `make: String`
*   `model: String`
*   `fuelEfficiency: Double` (in km per liter)

Add a method `calculateFuelNeeded(for distance: Double) -> Double`.

Create a subclass `ElectricCar` with an additional property:

*   `batteryCapacity: Double` (in kWh)

Override `calculateFuelNeeded(for:)` to calculate the energy needed in kWh based on battery efficiency (e.g., 5 km per kWh).

**Extra Task**: Add an extension to `Vehicle` to include a method `description()` that prints the make and model.

**Example**:

```swift
let car = Vehicle(make: "Toyota", model: "Corolla", fuelEfficiency: 15)
print(car.calculateFuelNeeded(for: 150)) // Output: 10.0 liters

let tesla = ElectricCar(make: "Tesla", model: "Model 3", batteryCapacity: 50)
print(tesla.calculateFuelNeeded(for: 150)) // Output: 30.0 kWh
```
