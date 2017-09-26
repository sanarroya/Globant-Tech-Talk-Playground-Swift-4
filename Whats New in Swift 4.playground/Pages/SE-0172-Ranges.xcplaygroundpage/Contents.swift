/*:
 ## [SE-0172] One-sided Ranges:
 
 Introduces a new `RangeExpression` protocol and a set of prefix/postfix operators to form one-sided ranges.
 
 ### Infinite Sequences
 */

import Foundation

extension String: LocalizedError {
    public var errorDescription: String? { return self }
}

let food = ["🍔", "🌯", "🌮"]
//:**Swift 3**
let oldNumberedFood = zip(1...food.count, food)
Array(oldNumberedFood)
//:**Swift 4**
let numberedFood = zip(1..., food)
Array(numberedFood)
/*:
 ### Collection subscripts
 */

let whatsNew = "Hello, what's new in Swift 4"

//:**Swift 3**
guard let oldIndex = whatsNew.range(of: ",") else {
    throw "😱"
}
let oldHello = whatsNew.substring(to: oldIndex.lowerBound)
let oldNew = whatsNew.substring(from: oldIndex.lowerBound)
//:**Swift 4**
guard let index = whatsNew.index(of: ",") else {
    throw "😱"
}
let hello = whatsNew[..<index]
let new = whatsNew[index...]
/*:
 ### Pattern Matching
 One sided ranges can be used in pattern matching constructs, e.g. in a `case` expression in a `switch` statement. The compiler can't determine that the `switch` is exhaustive.
 */
let value = 5
switch value {
case ...0:
    print("less than zero")
case 0:
    print("zero")
case 1...:
    print("greater than zero")
default:
    print("Not in range")
}
//:[**Previous**](@previous)[    **Next**](@next)
