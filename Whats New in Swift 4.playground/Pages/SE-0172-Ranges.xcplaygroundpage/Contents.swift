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
 One sided ranges can be used in pattern matching constructs, e.g. in a `case` expression in a `switch` statement. The compiler can't determine that the `switch` is exhaustive.
 */

//:[**Previous**](@previous)[    **Next**](@next)
