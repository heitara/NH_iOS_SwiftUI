### Task 1: **Functions**

**Objective**: Practice recursion and functions.

Implement the following function that calcualtes factorial.

* If the input is nil, the function should return nil.
* If the input is less than 0, print an error message and return nil.
* Otherwise, return the factorial of the number using recursion.

**Example Output**:

```swift
func factorial(n: Int?) -> Int {
    // TODO: add your implementation here
    return nil
} 
// n! = n * (n - 1)! 
// 1! = 1
// n! = n * (n - 1) * ... * 1 
```


### Task 2: **Working With Arrays and custom Structures**

**Objective**: Practice using arrays and structure.

Create a structure `Student`.
It should have a `name: String` and `grades: [Double]`

Implement a function `averageGrade(for: Student, inClass: [String: Student]) -> Double`.
Implement a function `bestStudent(for: Student, inClass: [String: Student]) -> (Student, Double)` which finds the best student with higher average grade in a list of students.
> Tip: `inClass` is a dictionary like :
```swift
let strudents = [
    "Alice" : Stident(name: "Alice", grades: [5.5, 3.5, 5.75]),
    "Bob" : Stident(name: "Bob", grades: [5.25, 3.75, 5.75])
]
```

### Task 3: **Find the longest word in a list of words using recursion**

**Objective**: Practice arrays and functions.


**Example**:
```swift
func findLongestWord(in: [String?]) -> String? {
    // TODO:
    return nil
}
```

### Task 4: **Shopping List**

**Objective**: Practice structures, methods, getters and dictionary.

Create a structure `ShoppingItem` with the following properties:
* name
* quantity
* isPurchased

Write a structure `ShoppingList` with the following props and functionalities:
1. A dictionary of `items`. The name of the item is used as a key.
1. A method `addItem(item: ShoppingItem)`.
1. A method `markAsPurchased(item: ShoppingItem)`. 
1. A method `markAsPurchased(itemName: String)`.
1. A method `listUnpurchasedItems() -> [ShoppingItems]`.

**Example Output**:
```swift
let shoppingList = ShoppingList()
shoppingList.addItem(name: "Apples", quantity: 5)
shoppingList.addItem(name: "Bananas", quantity: 3)
shoppingList.markAsPurchased(name: "Apples")

let unpurchased = shoppingList.listUnpurchasedItems()
```