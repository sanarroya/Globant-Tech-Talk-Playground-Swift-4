/*: 
 ## [SE-0161] Smart key paths:
 New strongly typed keypaths
 */
import Foundation




/*:
 Key paths are formed by starting at a root type and drilling down any combination of property and subscript names.
 
 You write a key path by starting with a backslash: `\Book.title`. Every type automatically gets a `[keyPath: …]` subscript to get or set the value at the specified key path.
 */

/*:
 Key paths are objects that can be stored and manipulated. For example, you can append additional segments to a key path to drill down further.
 */


/*:
 ### Key value observing
 */



//:[**Previous**](@previous)[    **Next**](@next)
