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

//:**Swift 4**

/*:
 ### Collection subscripts
 */

let whatsNew = "Hello, what's new in Swift 4"

//:**Swift 3**

//:**Swift 4**


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
//:[**Previous**](@previous)[    **Next**](@next)
