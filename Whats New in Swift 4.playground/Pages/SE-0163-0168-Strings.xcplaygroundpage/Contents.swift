/*: [Previous](@previous)
## [SE-0163] One-sided Ranges:
### Collection Conformance
*/
import Foundation

var hello = "SE-0163, playground"

hello.count

for char in hello {
    print(char)
}

/*:
### Unicode 9 support
*/

"👧🏽".count // person + skin tone
"👨‍👩‍👧‍👦".count // family with four members

/*:
 ## [SE-0168] Multi-line string literals:
 
 Introduces a simple syntax for multi-line literals using triple quotes("""). Inside a multi-line string literal, you don't need to escape single quotes.
 */

let multilineString = """
    This is a multi-line string.
    You don't have to escape "quotes" in here.
    The position of the closing delimiter
    controls whitespace stripping.
    """
print(multilineString)
//: [Next](@next)
