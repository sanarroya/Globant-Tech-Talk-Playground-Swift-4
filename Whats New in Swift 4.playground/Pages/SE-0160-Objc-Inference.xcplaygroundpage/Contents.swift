/*:
 ## [SE-0160] Limiting `@objc` inference:
 In many places where Swift 3 automatically inferred a declaration to be `@objc`, Swift 4 doesn't do this anymore.  
 **Most important `NSObject` subclasses no longer infer `@objc` for their members.**

 If you want to expose all or most members of a class to Objective-C, you can use `@objcMembers` attribute on the class declaration.
 */
import Foundation
//:**Swift 3**
class OldSwiftSpeaker: NSObject {
    var name: String
    var site: String
    
    init(name: String, site: String) {
        self.name = name
        self.site = site
    }
}
//:**Swift 4**
@objcMembers
class Speaker: NSObject {
    var name: String
    var site: String
    
    init(name: String, site: String) {
        self.name = name
        self.site = site
    }
}

//:[**Previous**](@previous)[    **Next**](@next)
