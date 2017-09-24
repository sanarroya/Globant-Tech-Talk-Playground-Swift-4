/*: [Previous](@previous)
 ## Strings
 ### [SE-0163](https://github.com/apple/swift-evolution/blob/master/proposals/0163-string-revision-1.md) Collection Conformance
 ###
*/
import Foundation

let whatsNew = "Hello, what's new in Swift 4"
//:**Swift 3**
whatsNew.characters.count
for char in whatsNew.characters {
    print(char)
}
//:**Swift 4**
whatsNew.count
for char in whatsNew {
    print(char)
}

/*:
### Unicode 9 support
*/

"👧🏽".count // person + skin tone
"👨‍👩‍👧‍👦".count // family with four members

/*:
 ## [SE-0168] Multi-line string literals
 
 Introduces a simple syntax for multi-line literals using triple quotes("""). Inside a multi-line string literal, you don't need to escape single quotes.
 */
//:**Swift 3**
let oldMultilineString = "This is a Swift 3 multi-line string.\nYou have to escape \"quotes\" in here.\n"
print(oldMultilineString)
//:**Swift 4**
let multilineString = """
This is a multi-line string.
You don't have to escape "quotes" in here.
The position of the closing delimiter
controls whitespace stripping.

"""
print(multilineString)
/*:
 ## [SE-0182] String new line escaping
 
  Introduces the ability to escape newlines in single and multi-line strings to improve readability.
 */
let escapedMultilineString = """
This is a multi-line string. \
You don't have to escape "quotes" in here. \
The position of the closing delimiter \
controls whitespace stripping.
"""
print(escapedMultilineString)
//:[**Previous**](@previous)[    **Next**](@next)
