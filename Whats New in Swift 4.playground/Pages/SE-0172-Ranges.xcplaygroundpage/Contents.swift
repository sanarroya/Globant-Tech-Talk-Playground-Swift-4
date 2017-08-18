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

let numberedFood = zip(1..., food)
Array(numberedFood)

/*:
 ### Collection subscripts
 */

var whatsNew = "Hello, what's new in Swift 4"
guard let index = whatsNew.index(of: ",") else {
    throw "😱"
}

let hello = whatsNew[..<index]
let new = whatsNew[index...]

/*:
 ### Pattern Matching
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
