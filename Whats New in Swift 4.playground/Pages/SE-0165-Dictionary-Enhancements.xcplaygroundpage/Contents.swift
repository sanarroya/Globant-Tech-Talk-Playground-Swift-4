/*:
 ## [SE-0165] Dictionary & Set Enhancements:
 
 Introduces enhancements to `Dictionary` and `Set`
 
 ### Sequence-based initializer
 
 Create a dictionary from a sequence of key-value pairs.
 */

let food = ["🍔", "🌯", "🌮"]
let foodNames = ["Hamburger", "Burrito", "Taco"]
let foodDictionary = Dictionary(uniqueKeysWithValues: zip(foodNames, food))
foodDictionary["Burrito"]
/*:
 
 ### Subscript with default
 
 You can provide a default value that will be returned for missing keys as a subscript argument, making the return type non-optional.
 */
foodDictionary["Hot Dog", default: "❌"]
/*:
 
 ### Dictionary specific map and fil
 
 `filter` and `mapValues` return a `Dictionary` not an `Array`.
 */
let filteredFood = foodDictionary.filter { $0.key != "Hamburger" }
type(of: filteredFood)
filteredFood
/*:
 
 ### Dictionary specific map and fil
 
 `filter` and `mapValues` return a `Dictionary` not an `Array`.
 */

let contacts = ["Julia", "Susan", "John", "Alice", "Alex"]
let groupedContacts = Dictionary(grouping: contacts, by: { $0.first! })
groupedContacts

//:[**Previous**](@previous)[    **Next**](@next)
