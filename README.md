# New Horizon - iOS Course January 2025

This repository contains materials which are used in the course for iOS programming with Swift and SwiftUI.

## Homeworks

* [Homework 1](./homework/week1.md)
* [Homework 2](./homework/week2.md)
* [Homework 3](./homework/week3.md)
* [Homework 4](./homework/week4.md)
* [Homework 5](./homework/week5.md)
* [Homework 6](./homework/week6.md)

## Topics

A short list of the covered topics in each lecture.

### Week 1 
1. Course overview. Xcode, developer.apple.com, swift.org and Swift.
1. Swift Basics
    1. Constant and variable
    1. `if` clause
    1. comments in code
    1. compile code using `swiftc` in Terminal
    1. `else if`
    1. `switch`
    1. basic types and tuples
    1. loops - `for in`, `while`, `repeat while`
    1. Collections - `Dictionary`, `Array`, `Set`
    1. Git & Github - brief introduction
### Week 2
1. Swift Basics
    1. Optional types - `Int?`, `String?`, `(name: String?, grades: [String])?`, `[Int]?`
    1. Functions 
        1. without parameters
        1. with parameters
        1. which return result
        1. which return more than one result (tuple, array)
        1. with `inout` parameters
        1. with labels 
        1. without labels `_`
        1. inner functions
        1. operators 
1. Structures - `struct`
    1. Structure with stored properties
    1. Structure with default values
    1. Structure with custom `init()`
    1. Structure with initializer with default values
    1. Delegate initialization
    1. Methods
    1. Subscript
    1. Static property
    1. Functions with variadic parameters
    1. Functions with parameters that have default values
    1. Access levels 
    1. Properties - `set` and `get`
    1. `Get` only property (computed property)
    1. Property obeserves - `willSet`, `didSet` 
    1. lazy properties
### Week 3
1. Classes - `class` - reference type
    1. Default initializer `init()` - only when all stored props have default values
    1. At least one initializer to be able to construct an object
    1. `convenient` initializers, which deleage the initialization and customize on top
    1. Inheritance - `class MyClass : Base { }`
    1. `super` is used to refer to the inherited parts (similar to `self`)
    1. An initializer should call a designated parent initializer using `super`
    1. redefine methods in a child class - `override`
    1. properties - same as in structures
    1. properties can be re-defined with `override`
    1. memory management - ARC
    1. `weak` and `unowned` to resolve loops 
    1. functions (closures) are storing references - use the capture list properly 
1. Protocols, Extensions and Closures 
    1. What is a `protocol`?
    1. What is an `extension`?
    1. How do provide a default implementation to a protocol? (optional methods)
    1. `Enums` with associated values
    1. Closures
        1. functions as obejcts
        1. capture list
        1. memory management using classes and closures
        1. default argument names `$0`, `$1`, ...
        1. `@escaping` attribute
        1. functions which return functions(closures)
### Week 4
1. App Design Cycle
    1. define
    1. prototype
    1. test
    1. analyze
    1. iterate
    1. [app-design-workbook](https://www.apple.com/au/education/docs/app-design-workbook-AU.pdf)
    1. [app-design-workbook as keynote](https://education-static.apple.com/coding-club-kit/appworkbook.key)
    1. [Apple Design Resources] (https://developer.apple.com/design/resources/)
    1. Define:
        1. Observe
        1. Take notes
        1. Define ideas
        1. Brainstorm
        1. Order ideas by importance
        1. Define MVP
    1. Prototyping:
        1. Use Pen & Paper to define main screens and main flow
        1. Use Keynote/Powerpoint
        1. Refine v.0.1, by adding more details 
            1. what buttons
            1. where they should be located
            1. test with real users (ask them questions, video recording)
1. XCode organization
    1. Left Panel (Navigator)
        1. Project Navigation
        1. Useful shortcuts - CMD + Shift + O
        1. Git integration
        1. Bookmarks Navigator
        1. Find Navigator (Search)
        1. Issue Navigator
        1. Test Navigator
        1. Debug Navigator
        1. Breakpoints Navigator
        1. Report Navigator
    1. Right Panel (Inspector)
        1. File inspector
        1. History inspector
        1. Quick Help Inspector
        1. Accessibility inspector
        1. Attributes inspector
    1. Header row
    1. Different simulators
    1. Schemes in Xcode
    1. Debug Area
        1. Console (on the right)
            1. Executable tab - render logs from a simulator
            1. Previews tab - render the logs from Canvas
        1. Variables View (on the left)
## Week 5
1. SwiftUI Basics
    1. Imperative programming
    1. Declarative programming
        1. View
        1. State
    1. Text
    1. Image
    1. Shapes
    1. Containers
    1. Composing views
    1. ViewModifiers 
        1. font
        1. resizable
        1. different initializers
        1. use the best initializer
1.  SwiftUI Containers
    1. Security, sensitive data and how to handle it
    1. Legal rules
    1. Accessibility in your app
    1. Multiplatform projects with SwiftUI
    1. Shared code between targets
    1. Different containers in SwiftUI
        1. VStack, HStack, ZStack
        1. Shapes (which are Views)
        1. Spacer
        1. Divider
        1. LazyHStack
        1. LazyVStack
        1. ScrollView
        1. ForEach (basic only)
        1. Grid
        1. ViewModifier * (to define one for a shape)
## Week 6
1. SwiftUI Containers
    1. ViewModifiers - how to extend the `Shape` protocol
    1. LazyHGrid and LazyVGrid
        1. items which are position in more than one column or row
    1. ForEach
        1. with a Range
        1. with collection
        1. with enumerated collection
        1. Recap: What is a KeyPath `\.self`
    1. Parsing JSON
        1. Read a file from app's bundle
        1. Implement custom model
        1. Implement codable protocol
        1. Use JSONDecoder to parse the JSON from String
        1. TODO: Read Data directly from .json file.
    1. Debugging in Xcode
        1. Breakpoints
        1. lldb console - p variable
        1. Step In, Step Out
        1. Conditional breakpoints
    1. GeometryReader - how to position items precisely
    1. Custom Layout by implementing Layout protocol
    1. Overlay - how to position view(s) on top
    1. @State
    1. @Binding